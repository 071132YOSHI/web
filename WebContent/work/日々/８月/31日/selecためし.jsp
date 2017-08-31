<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

<script src="jquery.selectbox.min.js" type="text/javascript"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/themes/redmond/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/i18n/jquery-ui-i18n.min.js"></script>


    <script>
        $(function(){
            $("#datepicker").datepicker();

            $( "#speed" ).selectmenu();

            $( "#files" ).selectmenu();

            $( "#number" )
              .selectmenu()
              .selectmenu( "menuWidget" )
                .addClass( "overflow" );

            $( "#salutation" ).selectmenu();






        });
    </script>
</head>
<body>
    <div>
        <label for="datepicker">Datepicker</label>
        <input id="datepicker" type="text">
    </div>


    <label for="speed">Select a speed</label>

<div class="demo">

<form action="#">

  <fieldset>
    <label for="speed">Select a speed</label>
    <select name="speed" id="speed">
      <option>Slower</option>
      <option>Slow</option>
      <option selected="selected">Medium</option>
      <option>Fast</option>
      <option>Faster</option>
    </select>

    <label for="files">Select a file</label>
    <select name="files" id="files">
      <optgroup label="Scripts">
        <option value="jquery">jQuery.js</option>
        <option value="jqueryui">ui.jQuery.js</option>
      </optgroup>
      <optgroup label="Other files">
        <option value="somefile">Some unknown file</option>
        <option value="someotherfile">Some other file with a very long option text</option>
      </optgroup>
    </select>

    <label for="number">Select a number</label>
    <select name="number" id="number">
      <option>1</option>
      <option selected="selected">2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
      <option>7</option>
      <option>8</option>
      <option>9</option>
      <option>10</option>
      <option>11</option>
      <option>12</option>
      <option>13</option>
      <option>14</option>
      <option>15</option>
      <option>16</option>
      <option>17</option>
      <option>18</option>
      <option>19</option>
    </select>

    <label for="salutation">Select a title</label>
    <select name="salutation" id="salutation">
      <option disabled selected>Please pick one</option>
      <option>Mr.</option>
      <option>Mrs.</option>
      <option>Dr.</option>
      <option>Prof.</option>
      <option>Other</option>
    </select>
  </fieldset>

</form>

</div>

</body>
</html>