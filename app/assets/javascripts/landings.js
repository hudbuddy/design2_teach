/**
 * Created by Tribune on 11/3/2014.
 */



function ResizeListContainers() {
    var itemWidth = $(".sidescrollable-item").outerWidth(true);
    var totalWidth = $(".learning-piece-item").length * itemWidth;
    $(".learning-piece-wrapper .sidescrollable-container").width(totalWidth);
    totalWidth = $(".consultant-item").length * itemWidth;
    $(".consultants-wrapper .sidescrollable-container").width(totalWidth);
    totalWidth = $(".product-item").length * itemWidth;
    $(".products-wrapper .sidescrollable-container").width(totalWidth);

}


$(window).on('resize', ResizeListContainers);
$(window).ready(ResizeListContainers);
