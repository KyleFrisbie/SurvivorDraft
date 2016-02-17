(function() {
    $(document).ready(function () {
        var $body = $('body');
        var queryRoute = "";
        if ($body.find('.players').length > 0) {
            queryRoute = "http://localhost:3000/players/search.json?q=";
        } else if ($body.find('.survivors').length > 0) {
            queryRoute = "http://localhost:3000/survivors/search.json?q=";
        } else if ($body.find('.tribes').length > 0) {
            queryRoute = "http://localhost:3000/tribes/search.json?q=";
        } else {
            queryRoute = "http://localhost:3000/seasons/search.json?q=";
        }
        $("#q").keypress(function (event) {
            var current = $("#q:text").val();
            var keypressed = String.fromCharCode(event.which);
            if (8 === event.keyCode) {
                current = current.substring(0, current.length - 1);
            } else {
                current += String.fromCharCode(event.which);
            }
            var query = queryRoute + current;
            $.getJSON(query, function (json) {
                $("#results").empty();
                for (var i = 0; i < json.length; i++) {
                    $("#results").append(json[i]["name"] + "<br/>");
                }
            });
        });
    });
})();