//banner轮播效果
function turnPics() {
    var index = 0;
    //var stop = false;
    var $li = $(".indexBannerView").find("#slider li");
    $("#bannerPre").hide(); //隐藏左右图标
    $("#bannerNext").hide();
    $("#bannerPre").click(function () {
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index = 0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        //$pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    });
    $("#bannerNext").click(function () {
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index = 0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        //$pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    });
    setInterval(function () {
        index++;
        if (index >= $("#slider li").length) {//大于slider li的叠加长度的时候归零
            index =0;
        }
        $li.eq(index).stop(true, true).fadeIn("slow").siblings().fadeOut("slow");
        //$pagesLis.eq(index).addClass("active").stop(true, true).siblings().removeClass("active");
    }, 7000);

    $(".indexBannerView").mouseover(function () {//鼠标移入轮播图片内显示左右图标
        $("#bannerPre").show();
        $("#bannerNext").show();
    }).mouseout(function () {//鼠标移出轮播图片内隐藏左右图标
        $("#bannerPre").hide();
        $("#bannerNext").hide();
    });

}



$(function () {
    turnPics();//banner轮播效果
});

