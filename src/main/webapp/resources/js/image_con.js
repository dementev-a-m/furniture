/**
 * Created by Антон Дементьев on 07.11.2017.
 */
var ImagesPreview = function(selector) {
    const max_height = 244;
    var imagesblock = '<div class="images--block"></div>';
    var imagesfull = '<span class="images--full">'+
        '<i class="glyphicon glyphicon-resize-full"></i>'+
        '</span>';
    var imagesmodal = '<div class="images--modal">'+
        ' <span class="images--close--modal">×</span>'+
        ' <img class="images--content">'+
        '</div>';
    $(selector).each(function(i, block){
        var images = $(block).find('img');
        for (var i = 0; i < images.length; i++) {
            var image = $(images[i]);
            image.addClass('images--origin');
            if ((image.height() > max_height) ||
                (image.get(0).height > max_height) ||
                (image.get(0).naturalHeight > max_height)) {
                image.wrap(imagesblock);
                image.closest('.images--block').append(imagesfull);
                image.closest('.images--block').after(imagesmodal);
            }else {
                image.load(function(){
                    if(this.height > max_height) {
                        image.wrap(imagesblock);
                        image.closest('.images--block').append(imagesfull);
                        image.closest('.images--block').after(imagesmodal);
                    }
                });
            }
        }
    });
};
$(document).on('click', '.images--block', function() {
    var nextElement = $(this).next().attr({'style':'display:block'});
    nextElement.find('.images--content').attr({
        'src': $(this).find('.images--origin').attr('src'),
        'alt': $(this).find('.images--origin').attr('alt')
    });
});
$(document).on('click', '.images--close--modal', function() {
    $(this).closest('.images--modal').attr({'style':'display:none'});
});
$(document).on('click', '.images--modal', function() {
    $(this).get(0).style.display = 'none';
});
ImagesPreview('#images--container');