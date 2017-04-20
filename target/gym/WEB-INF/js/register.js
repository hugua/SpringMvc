$("#signup").click(function () {
    console.log(1);
    var data={
        name:$("#name").val(),
        password:$("#password").val(),
        birthday:$("#birthday").val()
    };
    $.ajax({
        url:'/register',
        data:data,
        async:false,
        dataType:'json',
        type:'POST',
        success:function(data){
        }
    });
});