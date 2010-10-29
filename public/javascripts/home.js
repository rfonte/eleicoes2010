$(document).ready (function() {
    $("#menu>li").click (function() {
        $("#menu>li ul").hide();
        $(this).children("ul").show();
    })

});

