$(document).ready(function() {
	$('.tab').on('click', function(e) {
		event.preventDefault();
		if($(this).text()==='Crear cuenta') {
			$(this).parent().addClass('active');
			$(this).parent().parent().children().first().removeClass('active');
			$('.form-login').hide();
			$('.form-create').show();
		}else{
			$(this).parent().addClass('active');
			$(this).parent().parent().children().last().removeClass('active');
			$('.form-login').show();
			$('.form-create').hide();		
		}
	});
	
});