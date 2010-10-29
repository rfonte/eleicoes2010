$(document).ready (function() {
    $("#menu>li").hover (function() {
        $("#menu>li ul").hide();
        $(this).children("ul").show();
    })

});

