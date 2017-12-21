$.ajax({
    type: "post",
    url: "/ajax/System.ashx",
    data: { action: 'isLogin' },
    ansync:false,
    success: function (data) {
        debugger;
        var my = eval("(" + data + ")");
        if (my.flag != 1) {
            window.location.href = "/login.aspx";
        }
    }
});
