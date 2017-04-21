$(document).ready(function () {
	$.ajax({
        url:'/user/get',
        type:'GET',
        complete:function(data){
           console.log(data);
           var size = data.responseJSON.length;
           $("#number").text(size);
        }
	});
});

$("#delete").click(function () {
    var id = 1;
    $.ajax({
        url:'/user/user/'+id,
        type:'DELETE',
        complete:function(data){
            console.log(data);
        }
    });
});

$("#put").click(function () {
    var data={
        name:'chen',
        password:'chen'
    };
    var id = 1;
    $.ajax({
        url:'/user/user/'+id,
        data:data,
        dataType:'json',
        type:'PUT',
        complete:function(data){
            console.log(data);
        }
    });
});

$("#get").click(function () {
    var id = 1;
    $.ajax({
        url:'/user/user/'+id,
        type:'GET',
        complete:function(data){
            console.log(data);
        }
    });
});

$("#post").click(function () {
    var data={
        name:'chen',
        password:'chen'
    };
    $.ajax({
        url:'/user/post',
        data:data,
        dataType:'json',
        type:'POST',
        complete:function(data){
            console.log(data);
        }
    });
});