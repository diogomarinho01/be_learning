$(function(){

	$('#btnNewSite').click(function(){

        $("<div title=\"Confirmar!!!\">Ola, favor confirmar os dados basicos.</div>").dialog({
            buttons: {
                "Confirmar": function() {

                $.ajax({
                url: '/newSite',
                data: $('form').serialize(),
                type: 'POST',
                success: function(data) { //O HTML é retornado em 'data'
                    if(data.includes("error"))
                        alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                    else
                        $(location).attr('href','showHome');
                }
                });

                },
                "Sair": function() {
                    $(this).dialog("close");
                }
            }
        });

	});
});


$(function(){

	$('#btnSignUp').click(function(){

        $("<div title=\"Confirmar!!!\">Ola, seja bem vindo. Ao confirmar seu cadastro voce aceita os termos de uso e policitas de privacidade.</div>").dialog({
            buttons: {
                "Confirmar": function() {

                $.ajax({
                url: '/signUp',
                data: $('form').serialize(),
                type: 'POST',
                success: function(data) { //O HTML é retornado em 'data'
                    if(data.includes("error"))
                        alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                    else
                        $(location).attr('href','showHome');
                }
                });

                },
                "Sair": function() {
                    $(this).dialog("close");
                }
            }
        });

	});
});

$(function(){
	$('#btnSalvarProjeto').click(function(){

		$.ajax({
			url: '/newProject',
			data: $('form').serialize(),
			type: 'POST',
            success: function(data) { //O HTML é retornado em 'data'
                if(data.includes("error"))
                    alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                else
                    $(location).attr('href','showProjeto?id='+data);
            }
            });
	});
});

$(function(){

	$('#btnSalvarItemProjeto').click(function(e){

	    e.preventDefault();

        // Get form
        var form = $('#form_item')[0];

		// Create an FormData object
        var data = new FormData(form);

        $.ajax({
			url: '/newItemProject',
			data: data,
			type: 'POST',
			enctype: 'multipart/form-data',
			processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function(data) { //O HTML é retornado em 'data'
                if(data.includes("error"))
                    alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                else
                    $(location).attr('href','showProjeto?id='+data);
            }
            });
	});
});

$(function(){
	$('#btnLogin').click(function(){

		$.ajax({
			url: '/login',
			data: $('form').serialize(),
			type: 'POST',
            success: function(data) { //O HTML é retornado em 'data'
                //alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                if(data.includes("error"))
                    alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                else
                    $(location).attr('href','showHome');
            }
            });
	});
});

$(function(){
	$('#btnSeguir').click(function(){

		$.ajax({
			url: '/seguir',
			data: $('form').serialize(),
			type: 'POST',
            success: function(data) { //O HTML é retornado em 'data'
                //alert(data); //Se sucesso um alert com o conteúdo retornado pela URL solicitada será exibido.
                $(location).attr('href','showHome');
            }
            });
	});
});

$(function(){
    var text_max = 200;
    $('#count_message').html(text_max + ' restante.');

    $('#inputDescricao').keyup(function() {
      var text_length = $('#inputDescricao').val().length;
      var text_remaining = text_max - text_length;

      $('#count_message').html(text_remaining + ' restante.');
    });
});
