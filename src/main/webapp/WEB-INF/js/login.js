
$("#signup").click(function () {
    var data={
        name:$("#name").val(),
        password:$("#password").val(),
    };
    $.ajax({
        url:'/user/login',
        data:data,
        dataType:'json',
        type:'POST',
        complete:function(data){
            console.log(data);
            if(data.responseText==1){
                window.location.href = "/user/index"
            }else{
                $("#msg").text("用户名或者密码错误");
            }
        }
    });
});
