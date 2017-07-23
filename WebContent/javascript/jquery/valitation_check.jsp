<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
  <title>jQuery チェック集</title>
  <meta charset="UTF-8" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript">
  $(function() {
    // 空文字チェック
	  //セレクトボックスが切り替わったら発動
	  $('select').change(function() {

	    //選択したvalue値を変数に格納
	    var val = $(this).val();

	    //選択したvalue値をp要素に出力
	    $('p').text(val);
	  });
    });
  </script>
</head>
<body>





<select name="city">
  <option value="takasaki">高崎</option>
  <option value="maebashi">前橋</option>
  <option value="ota">太田</option>
</select>

<!--テキスト出力用要素-->
<p></p>


</body>
</html>