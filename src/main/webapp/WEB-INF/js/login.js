
$("#signup").click(function () {
    console.log(1);
    var data={
        name:$("#name").val(),
        password:$("#password").val(),
    };
    $.ajax({
        url:'/login',
        data:data,
        async:false,
        dataType:'json',
        type:'POST',
        success:function(data){
        }
    });
});
