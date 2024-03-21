$(function() {
    var showChar = 300;
    var ellipsestext = "...";
    var moretext = "Read more";
    var lesstext = "Read less";
    $('.more').each(function() {
        var content = $(this).html();
        var textcontent = $(this).text();

        if (textcontent.length > showChar) {

            var c = textcontent.substr(0, showChar);
            //var h = content.substr(showChar-1, content.length - showChar);

            var html = '<span class="container"><span>' + c + '</span>' + '<span class="moreelipses">' + ellipsestext + '</span></span><span class="morecontent">' + content + '</span>';

            $(this).html(html);
            $(this).after('<a href="" class="morelink">' + moretext + '</a>');
        }

    });

    $(".morelink").click(function() {
        if ($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
            $(this).prev().children('.morecontent').fadeToggle(500, function() {
                $(this).prev().fadeToggle(400);
            });

        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
            $(this).prev().children('.container').fadeToggle(500, function() {
                $(this).next().fadeToggle(400);
            });
        }
        //$(this).prev().children().fadeToggle();
        //$(this).parent().prev().prev().fadeToggle(500);
        //$(this).parent().prev().delay(600).fadeToggle(500);

        return false;
    });
});