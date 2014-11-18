/**
 * Created by Tribune on 11/3/2014.
 */

// All variables moved into DocumentReady to keep them out of the global namespace
function DocumentReady() {

    var scrollSpeed = 6;
    // Upped this slightly hoping for a lighter CPU load
    var scrollInterval = 16;
    var scrollIntID = 0;

    function ResizeListContainers() {

        var itemWidth = $(".sidescrollable-item").outerWidth(true);
        var totalWidth = $(".learning-piece-item").length * itemWidth;
        $(".learning-piece-wrapper .sidescrollable-container").width(totalWidth);
        totalWidth = $(".consultant-item").length * itemWidth;
        $(".consultants-wrapper .sidescrollable-container").width(totalWidth);
        totalWidth = $(".product-item").length * itemWidth;
        $(".products-wrapper .sidescrollable-container").width(totalWidth);

    }

    function onScrollButtonHover(evt) {
        // Get the activated arrow object
        var $arrow = $(evt.currentTarget);
        // .data('dir') gets "data-dir" attribute from html object
        var dir = $arrow.data('dir');
        // Get the wrapper the arrow belongs to
        var $wrapper = $arrow.closest(".sidescrollable-wrapper");
        // Get the scroll container within the wrapper
        var $scrollWrap = $wrapper.find('.sidescrollable-scrollwrap');
        // Scroll the wrapper with paramaters
        ScrollWrapper($scrollWrap, scrollSpeed, dir);
    }

    function offScrollButtonHover() {
        clearInterval(scrollIntID);
    }

    function ScrollWrapper($wrapper, speed, dir) {
        // Get the direction of the arrow as -1 or 1
        dir = dir.toLowerCase() === 'left' ? -1 : 1;
        // Scroll a wrapper
        scrollIntID = setInterval(function () {
            $wrapper.scrollLeft($wrapper.scrollLeft() + speed * dir);
        }, scrollInterval);
    }

    ResizeListContainers();

    //------ This Indescriminately asigns scroll buttons to cause heir hover event to try and scroll their parent with the name ".sidescrollable-wrapper" --------------
    $(".scroll-btn").hover(onScrollButtonHover, offScrollButtonHover);

    $(window).on('resize', ResizeListContainers);
}

// Changed to document.ready because that's what people use
$(document).ready(DocumentReady);


