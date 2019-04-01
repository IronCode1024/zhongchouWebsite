
//回到顶部
function backTop() {
    $("#backtopDiv").hide();

    $(window).scroll(function () {

        if ($(window).scrollTop() > 100) {//滚动条离顶部大于100px
            $("#backtopDiv").fadeIn(500);//显示
        }
        else {
            $("#backtopDiv").fadeOut(500);//消失
        }
    });
    $('#backtopDiv').click(function () {
        if ($('html').scrollTop()) {
            $('html').animate({ scrollTop: 0 }, 500);
            //return false;
        }
        $('body').animate({ scrollTop: 0 }, 500);
        //return false;
    });
}


$(function () {
    backTop();//回到顶部
});
