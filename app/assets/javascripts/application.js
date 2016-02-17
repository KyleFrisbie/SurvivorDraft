// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function() {
    $("#q".keypress(function (event) {
        var current = $("#q:text").val();
        var keypressed = String.fromCharCode(event.which);
        if(8 === event.keyCode) {
            current = current.substring(0, current.length - 1);
        } else {
            current += String.fromCharCode(event.which);
        }
        var query = "http://localhost:3000/players/search.json?q=" + current;
    }));
    $.getJSON (query, function(json) {
        $("#results").empty();
        for(var i = 0; i < json.length; i++) {
            $("#results").append(json[i]["name"] + "<br/>");
        }
    });
});