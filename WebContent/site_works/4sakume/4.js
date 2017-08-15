$(function() {

	$('ul.menu').css('display', 'none');

	/*
	 *
	 * $('category').hover(function(){
	 *
	 * $(this).css('background-color','blue'); }, function(){
	 * $(this).css('background-color','transparent'); }
	 *
	 *
	 *
	 *
	 *  );
	 *
	 */

	$('div.category').click(function() {

		$(this).removeClass('open');

		if ($('+ul', this).css('display') == 'none') {
			// $('ul.menu').css('display','block');

			$(this).addClass('open');
			$('+ul', this).slideDown('1000');

		} else {

			// $('ul.menu').css('display','none');
			$('+ul', this).slideUp('1000');
			$(this).removeClass('open');

		}

	});

});

/*
 *
 *
 * //関数hyoji()を1000ミリ秒間隔で呼び出す setInterval(function () { console.log("hello
 * world!") ,10000});
 *
 * function gazou(){ alert('jQuery is ' + typeof jQuery); alert('jQuery UI is ' +
 * typeof jQuery.ui); };
 *
 *
 * });
 *
 *
 */

/*
 * javascript:(function() { alert('jQuery is ' + typeof jQuery); alert('jQuery
 * UI is ' + typeof jQuery.ui); })();
 *
 */