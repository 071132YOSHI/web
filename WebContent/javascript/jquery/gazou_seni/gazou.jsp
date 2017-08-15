<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>








<style type="text/css">

body{

margin:0px;
padding:0px;

}

.slider {
    height: 340px;
    width: 100%;
    background-color: #FFF;
    background-position: center;
    background-repeat: no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    margin-bottom: 45px;
}

.slider {
    background-position: center top\9;
    background-repeat: repeat-x\9;
}

*+html .slider {
    background-position: center top;
    background-repeat: repeat-x;
}

</style>



</head>
<body >


konnbanwa




<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery.BgSwitcher/0.4.3/jquery.bgswitcher.min.js"></script>

<script>

jQuery(function($) {
    $('.slider').bgSwitcher({
        images: ['1.jpeg', '2.jpeg', '3.jpeg'],
        interval: 5000,
        effect: "fade"
    });
});


$(document).ready(function(){
	  alert("jQueryファイルの読み込み完了でーす。");
	});

</script>
</body>
</html>