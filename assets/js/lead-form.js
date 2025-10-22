function initIntlInput(selector) {
  const inputs = document.querySelectorAll(selector);
  if (!inputs.length) return;

  let userCountry = "auto";

  fetch("https://ipwho.is/")
    .then(res => res.json())
    .then(data => {
      if (data.country_code) userCountry = data.country_code.toLowerCase();
    })
    .catch(error => {
      console.warn("Geo IP lookup failed:", error);
    })
    .finally(() => {
      inputs.forEach(input => {
        const iti = window.intlTelInput(input, {
          separateDialCode: true,
          utilsScript: "/assets/js/utils.js",
          autoPlaceholder: "polite",
          initialCountry: userCountry,
        });

        const selectedCountryBtn = input.parentNode.querySelector(".iti__selected-country");
        if (selectedCountryBtn) {
          const flagPrimary = selectedCountryBtn.querySelector(".iti__selected-country-primary");
          const dialCode = selectedCountryBtn.querySelector(".iti__selected-dial-code");
          if (flagPrimary && dialCode) {
            flagPrimary.appendChild(dialCode);
          }
        }

        const updateFields = () => {
          const form = input.form;
          if (!form) return;

          const countryData = iti.getSelectedCountryData();
          if (!countryData) return;

          form.querySelector(".countryname")?.setAttribute("value", countryData.name || "");
          form.querySelector(".countrycode")?.setAttribute("value", countryData.iso2 || "");
          form.querySelector(".dialcode")?.setAttribute("value", countryData.dialCode || "");
        };

        input.addEventListener("countrychange", updateFields);
        input.addEventListener("input", updateFields);

        updateFields();
      });
    });
}

(function () {
  function getParam(name) {
    var params = new URLSearchParams(window.location.search);
    return params.get(name) || '';
  }

  function buildDescription(fieldText) {
    var parts = [];
    if (fieldText) parts.push(fieldText);
    var tags = {
      gclid: getParam('gclid'),
      src: getParam('src'),
      kw: getParam('kw'),
      matchtype: getParam('matchtype'),
      device: getParam('device')
    };
    var tagStr = Object.keys(tags)
      .filter(function (k) { return tags[k]; })
      .map(function (k) { return k + '=' + tags[k]; })
      .join(' | ');
    if (tagStr) parts.push(tagStr);
    return parts.join(' | ');
  }
  initIntlInput('.js-phone');


  $('.js-leadForm').on('submit', function (e) {
    e.preventDefault();

    var $form = $(this);

    var $status = $form.find('.js-status').removeClass('ok err').text('');
    var $btn = $form.find('.js-submitBtn');

    var name = $form.find('.js-name').val().trim();
    var email = $form.find('.js-email').val().trim();
    var majorsExists = $form.find('.js-majors').length > 0;
    var fieldExists = $form.find('.js-field').length > 0;
    var majors = majorsExists ? $form.find('.js-majors').val().trim() : '';
    var field = fieldExists ? $form.find('.js-field').val() : '';


    if (!name) {
      $status.addClass('err').text('Please enter your name.');
      return;
    }

    if (!email || !/^\S+@\S+\.\S+$/.test(email)) {
      $status.addClass('err').text('Please enter a valid email.');
      return;
    }
    if (majorsExists && !majors && !field) {
      $status.addClass('err').text('Please enter your majors.');
      return;
    }
    if (fieldExists && !field && !majors) {
      $status.addClass('err').text('Please select a field of study.');
      return;
    }

    var descriptionSource = '';
    if (majors) {
      descriptionSource = majors;
    } else if (field) {
      descriptionSource = $form.find('.js-field option:selected').text().trim();
    }

    $btn.prop('disabled', true).text('Submitting…');

    var phoneNumber = $form.find('.js-phone').val().trim();

    var dialCode = $form.find('.dialcode').val() || '';
    var formattedPhone = phoneNumber.replace(/^0+/, '');
    var fullPhoneNumber = dialCode + formattedPhone;



    var payload = {
      name: name,
      email: email,
      countryDialCode: parseInt(dialCode, 10) || 0,
      phoneNumber: formattedPhone,
      country: $form.find('.js-country').val(),
      ipAddress: $form.find('.js-serverIp').val() || '',
      description: descriptionSource ? buildDescription(descriptionSource) : 'No description provided',
      pageUrl: window.location.href,
      brandId: 0
    };

    $.ajax({
      url: (window.LEAD_CONFIG && window.LEAD_CONFIG.apiUrl) || 'https://leadapi.crmbytes.com/api/LandingPage/InsertLead',
      method: 'POST',
      headers: { 'accept': 'text/plain', 'Content-Type': 'application/json' },
      data: JSON.stringify(payload)
    })
      .done(function (res) {
        try { if (typeof res === 'string') res = JSON.parse(res); } catch (_) { }
        var ok = res && res.isSuccess === true && Number(res.statusCode) === 200;
        if (ok) {
          var cid = res.data && res.data.customerId ? String(res.data.customerId) : '';
          $status.addClass('ok').text('Submission successful.');

           var thankYou = (window.LEAD_CONFIG && window.LEAD_CONFIG.thankYouUrl) || '/thankyou';
          var paramsOut = new URLSearchParams(window.location.search);
          if (cid) paramsOut.set('customerId', cid);
          var fos = $form.find('.js-field option:selected').text();
          if (fos) paramsOut.set('field', fos);

          window.location.href = thankYou + (paramsOut.toString() ? ('?' + paramsOut.toString()) : '');
        } else {
          var errMsg = (res && (res.errorMessage || (res.data && res.data.message))) || 'Submission failed.';
          $status.addClass('err').text(errMsg);
        }
      })
      .fail(function (jqXHR) {
        var msg = 'Network or server error.';
        if (jqXHR && jqXHR.responseText) {
          try {
            var j = JSON.parse(jqXHR.responseText);
            msg = j.errorMessage || (j.data && j.data.message) || msg;
          } catch (_) {
            msg = jqXHR.responseText || msg;
          }
        }
        $status.addClass('err').text(msg);
        console.error('POST failed:', jqXHR.status, jqXHR.responseText);
      })
      .always(function () {
        $btn.prop('disabled', false).text('Request Information');
      });
  });
})();

window.LEAD_CONFIG = {
  apiUrl: 'https://leadapi.crmbytes.com/api/LandingPage/InsertLead',
  thankYouUrl: '/thankyou' 
};
