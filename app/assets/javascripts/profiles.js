/**
 * Created by Tribune on 12/10/2014.
 */


function onResize() {
    var windowWidth = window.innerWidth;

    if(windowWidth < 1480) {
            $(".profile-content").css("left", "20px");

    }
    else
    {
        var tempLeft = (windowWidth - 1480) * 0.5 + 20;
        $(".profile-content").css("left", tempLeft + "px");
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