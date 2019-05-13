$(function(){
	$('#btnLogin').click(function(){
		
		$.ajax({
			url: '/login',
			data: $('form').serialize(),
			type: 'POST',
            success: function(data) { //O HTML é retornado em 'data'
                //alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                $(location).attr('href','showHome?id='+data);                
            }
            });
	});
});

