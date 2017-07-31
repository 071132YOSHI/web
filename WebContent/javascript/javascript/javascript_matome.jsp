<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script type="text/javascript">


<%
//onloadにいれないと普通に前から実行されるだけのやつになる
//1,変数名


%>

var a=1;


<%//2,HTML出力   %>
document.write("HTML出力テスト");

<%//３、コンソール出力%>

console.log("hello world!");

<%//4、アラーと出力%>



window.alert('a');

<%//5,if%>

if(a==1){

	window.alert('konnbanwa');

}else{


	window.alert('ohayou');
}



<%//配列%>

var ary=new Array();
var ary_1=new Array(10);
var ary_2=['配列１つ目','配列２つ目'];

window.alert(ary_2[0]);
window.alert(ary_2[1]);

<%//関数%>

//基本的にこれをinput onclick=関数()で呼び出せばいい。
function area(a,b){

	result=a*b;
	return result;

}

function test(){

	window.alert("写ったら勝ち");

}


<%//イベントハンドら、ここが超重要
  //なんか簡単な方法がまず１、呼び出し元でthis放り込んでそれ.valueとかして読み込む。

%>
//１,thisでやるやり方(値の取得、変更含める、よびだし inputしかいじれない)


    function btnClick(obj){
        alert(obj.value);

        //これで要素簡単に変えれる
        obj.value="変わってます";

        alert(obj.value);

        //nameの変え方,恐らくobj.要素名で変えれる。

        obj.name="変わってますnameが";

        alert(obj.name);



    }


//2,外部の値を取得、変更するやり方
//絶対守るべきなんが文字列は絶対にシングルくオーテーション、これで延々と躓く。

//jqueryはまず関数の形が違う！！！！！！！！！！！

function init(){


	var hidden=document.getElementById('hide');

	hidden.name='変更終了';


	var name=hidden.name;

	alert(name);


	alert(1);


}

//一応ページロード時に発生するイベントの書き方
//すべての種類網羅するまでjavascriptから逃げない。ライブラリ使わない。



function init2(){

	alert('ロード時に発生できています');

}




<%//値の取得,変更,ここが超重要%>



document.a.b.value=2;

<%

//階層指定はＨＴＭＬから下っていく、そもそもやる必要がない。

%>

























</script>







<title>Insert title here</title>
</head>
<body onload="init2()" >

<br>
<br>

<input type="button" onclick="area()" value="関数起動"/>
<input type="button" id="btn" onclick="window.alert()" value="アラート起動"/>
<input type="button" id="btn" onclick="test()" value="優先度実験"/>
 <input type="button" name="name" value="thisで渡すやり方" onclick="btnClick(this)" />


<form name="a" >

<input type="hidden" name="隠れ要素" id="hide">
<input type="button" value="hiddenいじる" onclick="init()">

</form>




</body>
</html>