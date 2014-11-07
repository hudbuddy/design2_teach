/**
 * Created by Tribune on 11/3/2014.
 */

var scrollSpeed = 3;
var scrollInterval = 10;
var ScrollIntID = 0;
var ScrollObject;



function ResizeListContainers() {

    var itemWidth = $(".sidescrollable-item").outerWidth(true);
    var totalWidth = $(".learning-piece-item").length * itemWidth;
    $(".learning-piece-wrapper .sidescrollable-container").width(totalWidth);
    totalWidth = $(".consultant-item").length * itemWidth;
    $(".consultants-wrapper .sidescrollable-container").width(totalWidth);
    totalWidth = $(".product-item").length * itemWidth;
    $(".products-wrapper .sidescrollable-container").width(totalWidth);

}

function ScrollWrapperRight() {
    ScrollObject.closest(".sidescrollable-wrapper").scrollLeft(ScrollObject.closest(".sidescrollable-wrapper").scrollLeft() + scrollSpeed);
}

function ScrollWrapperLeft(ScrollWrapper) {
    ScrollObject.closest(".sidescrollable-wrapper").scrollLeft(ScrollObject.closest(".sidescrollable-wrapper").scrollLeft() - scrollSpeed);
}


function WindowReady()
{
    ResizeListContainers();

    //------ This Indescriminately asigns scroll buttons to cause heir hover event to try and scroll their parent with the name ".sidescrollable-wrapper" ----------------
    $(".scroll-btn-right").hover(function() {
            if(ScrollIntID == 0) {
                ScrollObject = $(this);
                ScrollIntID = setInterval(ScrollWrapperRight, scrollInterval);
                //ScrollWrapperRight($(this));
            }
        } , function() {
            ScrollObject = null;
            clearInterval(ScrollIntID);
            ScrollIntID = 0;
    });

    $(".scroll-btn-left").hover(function() {
        if(ScrollIntID == 0) {
            ScrollObject = $(this);
            ScrollIntID = setInterval(ScrollWrapperLeft, scrollInterval);
            //ScrollWrapperRight($(this));
        }
    } , function() {
        ScrollObject = null;
        clearInterval(ScrollIntID);
        ScrollIntID = 0;
    });

}



$(window).on('resize', ResizeListContainers);
$(window).ready(WindowReady);


