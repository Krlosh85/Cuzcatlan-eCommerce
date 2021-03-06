document.addEventListener('DOMContentLoaded', function () {
    M.AutoInit();

    var elems = document.querySelectorAll('.slider');
    var instances = M.Slider.init(elems, {
        indicators: false,
        height: 500
    });

    var elems = document.querySelectorAll('.carrito');
    var instances = M.Sidenav.init(elems, {
        edge: 'right'
    });

})

function cerrar() {
    // var instance = M.Sidenav.getInstance('.carrito');
    // instance.close();
    $('.carrito').sidenav('close');
}

//----------------------------------//
// Instancias de la librería Swiper //
//----------------------------------//

var swiper = new Swiper('.swiper-container', {
    autoHeight: true,
    // slidesPerView: 4,
    // spaceBetween: 25,
    breakpoints: {
        // when window width is >= 320px
        320: {
            slidesPerView: 1,
            spaceBetween: 20,
        },
        // when window width is >= 480px
        680: {
            slidesPerView: 3,
            spaceBetween: 25
        },
        // when window width is >= 640px
        1024: {
            slidesPerView: 4,
            spaceBetween: 25
        }
    },
    pagination: {
        el: '.swiper-pagination.prod',
        clickkable: true,
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev'
    },

});

var galleryThumbs = new Swiper('.gallery-thumbs', {
    spaceBetween: 10,
    slidesPerView: 2,
    loop: true,
    freeMode: true,
    loopedSlides: 5, //looped slides should be the same
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
});
var galleryTop = new Swiper('.gallery-top', {
    spaceBetween: 10,
    loop: true,
    loopedSlides: 5, //looped slides should be the same
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    thumbs: {
        swiper: galleryThumbs,
    },
});