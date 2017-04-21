$("#signup").click(function () {
    var data={
        name:$("#name").val(),
        password:$("#password").val(),
        birthday:$("#birthday").val()
    };
    $.ajax({
        url:'/user/register',
        data:data,
        async:false,
        dataType:'json',
        type:'POST',
        complete:function(data){
            window.location.href = "/user/index"
        }
    });
});