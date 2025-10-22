
$(window).scroll(function () {
    if ($(this).scrollTop() > 37) {
        $('.fixed-top').addClass('bshadow');
    } else {
        $('.fixed-top').removeClass('bshadow');
    }
});


//---------------------- Service Slider -------------------

$('.service-slider').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: true,
    speed: 300,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: '#srvc-prev-Arrow',
    nextArrow: '#srvc-next-Arrow',

    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});


//---------------------- Members Slider -------------------

$('.members-slider').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    prevArrow: '#srvc-prev-Arrow',
    nextArrow: '#srvc-next-Arrow',

    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 575,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});



//---------------------- Logo Slider -------------------

$('.test-slider').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: false,
    dots: true,
    speed: 5000,
    slidesToShow: 2,
    slidesToScroll: 1,

    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});


/*----------- Counter ------------*/

document.querySelectorAll(".counter").forEach((item) => {
    const targetValue = Number(item.dataset.value);
    const increment = Number(item.dataset.plus);
    const suffix = item.textContent.trim();
    let currentCount = 0;

    const updateCounter = () => {
        if (currentCount >= targetValue) {
            item.textContent = `${targetValue}${suffix}`;
            clearInterval(interval);
            return;
        }
        item.textContent = `${currentCount}${suffix}`;
        currentCount += increment;
    };

    const interval = setInterval(updateCounter, 100);
});


/*------------- Tab Changer -----------*/

function TabChanger(tabContainer, tabTimeout) {
    // Initialize variables for the specific instance
    this.totalTabsCount = $(tabContainer + " .nav-link").length;
    this.activeTabIndex = 1;
    this.tabTimeout = tabTimeout;
    this.AUTO_CHANGE_TIMER = null;

    // Method to handle tab change
    this.tabChangeHandler = () => {
        if (this.activeTabIndex === this.totalTabsCount) {
            this.activeTabIndex = 1;
        } else {
            this.activeTabIndex++;
        }
        $(tabContainer + " .nav-link")
            .eq(this.activeTabIndex - 1)
            .trigger("click");
    };

    // Start the auto-change timer
    this.start = () => {
        this.AUTO_CHANGE_TIMER = setInterval(this.tabChangeHandler, this.tabTimeout);
    };

    // Stop the auto-change timer
    this.stop = () => {
        clearInterval(this.AUTO_CHANGE_TIMER);
    };
}

// Usage example:

// Instance 1
let tabChanger1 = new TabChanger("#v-pills-tab", 5000);
tabChanger1.start();

// Instance 2
let tabChanger2 = new TabChanger("#v-pills-tab1", 5000);
tabChanger2.start();




/*---------------- Requirments Slider ------------------*/


$('.requirments-slider').slick({
    autoplay: false,
    slidesToShow: 2,
    slidesToScroll: 1,
    speed: 1000,
    autoplaySpeed: 400,
    infinite: true,
    dots: false,
    arrows: false,
    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,

            }
        }
    ]
});


/*-------------- Tabs ---------------*/


    const buttons = document.querySelectorAll('#custom-tab-buttons .nav-link');
    const panes = document.querySelectorAll('#custom-tab-content .tab-pane');

    buttons.forEach(btn => {
        btn.addEventListener('click', () => {
            buttons.forEach(b => b.classList.remove('active'));
            panes.forEach(p => p.classList.remove('active'));
            btn.classList.add('active');
            const target = document.querySelector(btn.getAttribute('data-target'));
            if (target) target.classList.add('active');
        });
    });




/*-------------------- Latest News -----------------*/

$('.latestNews-slider').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: false,
    speed: 300,
    slidesToShow: 3,
    slidesToScroll: 1,

    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});



/*-------------------- Latest News -----------------*/

$('.pub-slider').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: false,
    speed: 300,
    slidesToShow: 3,
    slidesToScroll: 1,

    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});


















/*------------- Using -------------*/

$('.brand-logo-slider').slick({
    autoplay:true,
    slidesToShow: 6,
    slidesToScroll: 1,
    speed:4500,
    autoplaySpeed:300,
    infinite: true,
    cssEase: 'linear',
    dots: false,
    arrows: false,
    row:'1',
    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 5,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 4,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 767,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 575,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        }
    ]
});

$('.client-slider').slick({
    autoplay: false,
    slidesToShow: 1,
    slidesToScroll: 1,
    speed: 1500,
    autoplaySpeed: 200,
    infinite: true,
    //cssEase: 'linear',
    dots: false,
    arrows: true,
    prevArrow: '#cli-right',
    nextArrow: '#cli-left',
    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
})

$('.explore-slider').slick({
    autoplay: false,
    slidesToShow: 3,
    slidesToScroll: 1,
    speed: 1000,
    autoplaySpeed: 400,
    infinite: true,
    // cssEase: 'linear',
    dots: false,
    arrows: true,
    prevArrow: '#exp-right',
    nextArrow: '#exp-left',
    //row:'1',
    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 576,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                dots: true,
                arrows: false,
                autoplay: true,
            }
        }
    ]
});

$('.trend-slider').slick({
    autoplay: false,
    slidesToShow: 3,
    slidesToScroll: 1,
    speed: 1000,
    autoplaySpeed: 400,
    infinite: true,
    // cssEase: 'linear',
    dots: false,
    arrows: true,
    prevArrow: '#trend-right',
    nextArrow: '#trend-left',
    //row:'1',
    responsive: [
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,

            }
        },
        {
            breakpoint: 575.5,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});


$('.industry-slide').slick({
    dots: false,
    infinite: true,
    autoplay: true,
    arrows: false,
    slidesToShow: 1,
    slidesToScroll:1,
    infinite: true,
    pauseOnHover: false,
    swipe: true,
    touchMove: false,
    vertical: true,
    speed: 1000,
    autoplaySpeed: 2000,
    useTransform: true,
    centerMode: true,
    centerPadding: '300px',

});



$('.testimonial-slider').slick({
    dots:false,
    infinite:true,
    autoplay:false,
    arrows: true,
    slidesToShow:1,
    slidesToScroll:1,
    infinite: true,
    pauseOnHover: false,
    swipe: true,
    touchMove: false,
    vertical: true,
    speed: 1000,
    autoplaySpeed: 2000,
    prevArrow: ('#prev'),
    nextArrow: ('#next'),
    centerMode: true,
    centerPadding: "0px",
    //useTransform: true,
    //centerMode: true,
    //centerPadding: '0px',

});


$(".clsp-link a").on("click", function () {
  $(".clsp-link a").removeClass("active"); // remove from all
  $(this).addClass("active"); // add to clicked one
});



/*------------------------------------*/



    var copyright = new Date().getFullYear();
    $(".copyrightyear").text(copyright);
