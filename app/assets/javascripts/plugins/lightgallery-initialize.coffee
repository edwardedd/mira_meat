$document.on("ready", ()->
    $lg = $('.animated_thumbnails')
    $lg.lightGallery({
        selector: 'a.lg_object'
    });
);