//TODO banner轮播效果
function turnPics() {
    var index = 0;
    var stop = false;
    var $li = $(".indexBannerView").find("#slider li");
    $("#bannerPre").click(function () {
        //alert('trfhssdf');
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index = 0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        $pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    });
    $("#bannerNext").click(function () {
        //alert('trfhssdf');
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index = 0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        $pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    });
    setInterval(function () {
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index = 0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        $pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    }, 3000);
}
$(function () {
    turnPics();
});