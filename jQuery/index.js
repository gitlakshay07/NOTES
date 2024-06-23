//BASIC JQUERY => selectors, events, adding CSS!
$(document).ready(function(){
    $('#test').text('hello by Jquery script');

    $('.hide').click(function(){
        $('#test').hide();
    })

    $('.show').click(function(){
        $('#test').show();
        $('#test').css({
            "color":"red",
            "textDecoration":"underline"
        })
    })
});

// ADVANCE JQUERY => 

$(document).ready(function(){
    $('#colorbtn').click(function(){
        $(this).css({
            "color":"black",
            "backgroundColor":"pink"
        })
    })

    $('#hidden').click(function(){
        $('[href]').hide("slow");
    })
});


