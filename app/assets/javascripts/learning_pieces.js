/**
 * Created by Tribune on 11/11/2014.
 */
var playerMinSize = 720;
var playerMaxSize = 1280;


//resize youtube player depending on window size
function ResizePlayer()
{
    var newWidth = window.innerWidth * 0.55;
    var newHeight = newWidth * 0.625;
    if((newWidth >= playerMinSize) && (newWidth <= playerMaxSize)) {
        $(".youtube-embed").width(newWidth);
        $(".youtube-embed").height(newHeight);

        $(".learning-content").width(newWidth + 240);
    }

}

function WindowReady()
{
    ResizePlayer();
    $(".learning-main").backgroundColor = 'blue';
}


// Set the initial player size
$(window).on('resize', ResizePlayer);
$(window).ready(WindowReady);