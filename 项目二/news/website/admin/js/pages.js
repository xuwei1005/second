var param = {
    pageCount: 0,
    pageNow: 1
};

function createPage(obj, para){
	param = para;
    console.log(param);
    $(obj).html("");
    var ul = $("<ul>");
    ul.append("<li class='firstPage'>首页</li>");
    ul.append("<li class='prePage'>上一页</li>");

    for (i = 1; i <= param.pageCount; i++) {
        if (param.pageNow == i) {
            ul.append($("<li class='active'>").html(i));
        } else {
            ul.append($("<li>").html(i));

        }

    }
    ul.append("<li class='lastPage'>尾页</li>");
    ul.append("<li class='nextPage'>下一页</li>");
    $(obj).append(ul);
    if (param.pageNow == 1) {
        $("li.firstPage").attr("disabled", true).css({ "backgroundColor": "#f2f2f2", "cursor": "text" });
        $("li.prePage").attr("disabled", true).css({ "backgroundColor": "#f2f2f2", "cursor": "text" });

    }

    if (param.pageNow == param.pageCount) {
        $("li.lastPage").attr("disabled", true).css({ "backgroundColor": "#f2f2f2", "cursor": "text" });
        $("li.nextPage").attr("disabled", true).css({ "backgroundColor": "#f2f2f2", "cursor": "text" });
    }

    $(obj).find("li").click(function() {
        // var pageNow=1;

        if ($(this).html() == "首页") {
            if (param.pageNow == 1) {

                $(this).attr("disabled", true);
                return;
            }
            param.pageNow = 1;
        } else
        if ($(this).html() == "尾页") {
            if (param.pageNow == param.pageCount) {
                $(this).attr("disabled", true);
                return;

            }
            param.pageNow = param.pageCount;
        } else
        if ($(this).html() == "上一页") {

            if (param.pageNow == 1) {

                $(this).attr("disabled", true);
                return;
            }
            param.pageNow = param.pageNow - 1;
        } else
        if ($(this).html() == "下一页") {
            if (param.pageNow == param.pageCount) {
                $(this).attr("disabled", true);
                return;
            }
            param.pageNow = param.pageNow + 1;
            console.log(param.pageNow);
            //$(this).attr("disabled",false);
        } else {
            param.pageNow = parseInt($(this).html());
        }

        window.location.href = "load.php?pageNow=" + param.pageNow + "&type=" + param.type;

    })
}
