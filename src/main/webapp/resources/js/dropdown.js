$(function() {
    //设置下拉菜单动态变化
    $('.dropdown').hover(
        function(){
            let currentUl = $(this).children().next("ul");
            currentUl.slideDown(200);
        },
        function(){
            let currentUl = $(this).children().next("ul");
            currentUl.css("display","none");
        }
    );
})