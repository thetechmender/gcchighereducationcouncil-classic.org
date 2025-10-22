(function () {
    "use strict";
    /**
     * Navbar links active state on scroll
     */
    const navbarlinksActive = () => {
        let position = window.scrollY + 200;
        let navbarlinks = document.querySelectorAll('#navbar .scrollto');
        navbarlinks.forEach(navbarlink => {
            if (!navbarlink.hash) return;
            let section = document.querySelector(navbarlink.hash);
            if (!section) return;
            if (position >= section.offsetTop && position <= (section.offsetTop + section.offsetHeight)) {
                navbarlink.classList.add('active');
            } else {
                navbarlink.classList.remove('active');
            }
        });
    };
    window.addEventListener('load', navbarlinksActive);
    document.addEventListener('scroll', navbarlinksActive);

    /**
     * Mobile nav toggle
     */
    document.querySelector('.mobile-nav-toggle').addEventListener('click', function (e) {
        document.querySelector('#navbar').classList.toggle('navbar-mobile');
        this.classList.toggle('bi-list');
        this.classList.toggle('bi-x');
    });

    /**
     * Mobile nav dropdowns activate
     */
    document.querySelectorAll('.navbar .dropdown > a').forEach(el => {
        el.addEventListener('click', function (e) {
            if (document.querySelector('#navbar').classList.contains('navbar-mobile')) {
                e.preventDefault();
                this.nextElementSibling.classList.toggle('dropdown-active');
            }
        });
    });

    /**
     * Scroll with offset on links with a class name .scrollto
     */
    document.querySelectorAll('.scrollto').forEach(el => {
        el.addEventListener('click', function (e) {
            if (document.querySelector(this.hash)) {
                e.preventDefault();

                let navbar = document.querySelector('#navbar');
                if (navbar.classList.contains('navbar-mobile')) {
                    navbar.classList.remove('navbar-mobile');
                    let navbarToggle = document.querySelector('.mobile-nav-toggle');
                    navbarToggle.classList.toggle('bi-list');
                    navbarToggle.classList.toggle('bi-x');
                }
                scrollto(this.hash);
            }
        });
    });
})();
