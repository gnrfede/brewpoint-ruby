// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require moment
//= require bootstrap-datetimepicker
//= require_tree .

$(document).on("turbolinks:load", function(){
    $('a.prevent-default').click(function(event){
        event.preventDefault();
    });

    $('.card-list').click(function (event) {
        if(event.target == this || $(this).has($(event.target))) {
            console.log("Card list");
            $(this).children('.supplies-from-suppliers').fadeToggle(250);
            $(this).children('.info').slideToggle(500);
            $(this).children('.separator').fadeToggle(500);
            $(this).children('ul.options').fadeToggle(500);
        }
    });



    $('.contenedor').click(function (event) {
        if(event.target == this) {
            console.log("Contenedor");
            $('.supplies-from-suppliers').fadeIn(250);
            $('.info').slideUp(500);
            $('.separator').fadeOut(500);
            $('ul.options').fadeOut(500);
        }
    });

    $('.edit').click(function (event) {
        console.log("Edit");
    })
})
