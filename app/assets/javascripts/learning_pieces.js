/**
 * Created by Tribune on 11/11/2014.
 */
var playerMinSize = 720;
var playerMaxSize = 1280;


//resize youtube player depending on window size
function ResizePlayer()
{
    var newWidth = window.innerWidth * 0.45;
    var newHeight = newWidth * 0.625;
    if((newWidth >= playerMinSize) && (newWidth <= playerMaxSize)) {
        $(".youtube-embed").width(newWidth);
        $(".youtube-embed").height(newHeight);

        $(".learning-content").width(newWidth + 340);
    }
}

/* Used to add a topic to the edit learning piece page without a reload */
function AddTopic() {
    if($("#new-topic").val() != "") {
        $.ajax({
            type: "POST",
            url: "/topics",
            data: $.param({ topic: {title: $("#new-topic").val()}}),
            dataType: "json",
        })
            .success(function (data) {
                var checkbox = document.createElement('input');

                $("#new-topic").val("");

                checkbox.className = "check_boxes optional"
                checkbox.id = "learning_piece_topic_ids_" + data.id;
                checkbox.name = "learning_piece[topic_ids][]";
                checkbox.type = "checkbox";
                checkbox.value = data.id;

                var label = document.createElement('label');
                label.className = "checkbox";
                label.appendChild(checkbox);
                label.appendChild(document.createTextNode(data.title));


                $(".input.check_boxes.optional.learning_piece_topics").append(label);
            });
    }
}

function WindowReady()
{

    $(".learning-main").backgroundColor = 'blue';

    $(".add-topic-btn").on("click", AddTopic);
}




// Set the initial player size

$(window).ready(WindowReady);