/**
 * Created by Tribune on 12/10/2014.
 */


function onResize() {
    var windowWidth = window.innerWidth;
    if(windowWidth < 1540) {
        var lef = parseInt($(".profile-content").css("left"));
        lef = windowWidth - 1300;
        if(lef > 0) {
            $(".profile-content").css("left", lef + "px");
        }
    }
    else
    {
        $(".profile-content").css("left", "10%");
    }
}

function WindowReady()
{

    onResize();
}




// Set the initial player size

$(window).ready(WindowReady);
$(window).resize( function() {
    onResize();
} );