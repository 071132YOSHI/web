<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>

//１、jqueryがはいってるか

//あと初期起動は↓のfunction(){}に入っていないと起動できない。

$(function(){
alert("jQueryファイルの読み込み完了でーす。");


//2,要素の指定、メソッド総まとめ

//1,クラスの追加

$("p").addClass('new');

//クラスを消す,消すクラス名を入れる
$("p").removeClass('new');


//２、要素の取得(html要素のみ、cssは無理),変更、削除

var p=$("p").attr('value');
alert(p);

$("p").attr('value','value変更成功');
var p=$("p").attr('value');
alert(p);


$("p").removeAttr('value');
var p=$("p").attr('value');
alert(p);



//こっちは無理
var color=$("p").attr('color');
alert(color);

//vs3,cssの設定、取得
$("p").css("color","blue");

var css=$("p").css("color");
alert(css);



//4、テキストの置換、テキスト内容を中身と置換する。
$("p").text('テキストを追加しました');

//テキストの取得

var text=$("p").text();
alert(text);

////////////////////////イベントハンドらについて///////////////////////////////////////
//こっちでイベントハンドら設定することで、html側はまったくjavascriptのonclickとか出さないくていい。
//クッソラク。ＨＴＭＬは固定でいい。


//クリック時

  $('.button').click(function() {

	  alert('ボタンが押されました');


  });

//ダブルクリック時、clickと両立はできない
  $('.button2').dblclick(function() {

	  alert('2回ボタンが押されました');


  });

//ホバー

  $('.button').mouseenter(function() {

	  alert('ボタンの上を通りました');


  });

  //時間について



//中が変わったとき（text→中身を変えて違うとこクリックしないと発動しない,select→変えた瞬間発動のみ）

  $('.text').change(function() {

	  alert('テキストの中身が変更されました');


  });

  $('.key').change(function() {

	  alert('テキストの中身が変更されました');


  });


  history.pushState(null, null, null);

  window.addEventListener("popstate", function() {
      history.pushState(null, null, null);
  });


});



</script>

<style>

.new{

background-color:red;

}

</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>




<p value="value参考できています" style="color:red;">
こんにちは
</p>


<input type="button" class="button" value="ボタン">
<input type="button" class="button2" value="ダブルクリックボタン">

<br>
<br>

<input type="text" class="text">


<select name="キー" class="key">
<option value="選択肢1">選択肢1</option>
<option value="選択肢2">選択肢2</option>
<option value="選択肢3">選択肢3</option>
</select>

<a href="not_modoru.html">遷移</a>












</body>
</html>