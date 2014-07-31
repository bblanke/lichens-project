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
//= require turbolinks
//= require_tree .

$(document).ready(function()
{
	$('.alert').delay(1500).fadeOut(400);
});


$(document).ready(function(){
$("body").on("click", ".remove_link", function(){
$(this).prev("input[type=hidden]").val("1");
$(this).closest(".lichens").hide();
event.preventDefault();
});
});

function add_fields(link, association, content) {
 var new_id = new Date().getTime();
 var regexp = new RegExp("new_" + association, "g")
 $(link).parent().before(content.replace(regexp, new_id));
 console.log("added");
}

/*Navigation Script*/
    $(document).ready(function(){
        $(document).scroll(function(){
            $('.fixed').each(function(){
                $(this).css('top', $(document).scrollTop() - ($(window).height() * ($(this).data("page") - 1)) + "px");
            });
        });
        $('.smoothScroll').click(function(){
            $('html, body').animate({
                scrollTop: $( $.attr(this, 'href').substring(1) ).offset().top
        }, 500);
        return false;
        });
    });
    $(document).ready(function(){
        var toggle = 0;
    $(".menu").on( "click", function() {
        if(toggle == 0)
           {
               toggle = 1
               $('nav').animate({
                   width: "20%"
               } , 500);
               $('body').animate({
                   width: "80%"
               }, 500);
               return 0;
           }
           if(toggle == 1)
           {
               toggle = 0
               $('nav').animate({
                   width: "0%"
               } , 500);
               $('body').animate({
                   width: "100%"
               }, 500);
               return 0;
           }
    });
    });

    

/*Header Parallax*/

$(document).ready(function(){
    $('section[data-type="background"]').each(function(){
        var $bgobj = $(this); // assigning the object
     
        $(window).scroll(function() {
            var yPos = ($(window).scrollTop() / $bgobj.data('speed'));
            // Put together our final background position
            var coords = '0px ' + yPos + 'px';
 
            // Move the background
            $bgobj.css({ backgroundPosition: coords});
            

        }); 
    }); 
}); 


