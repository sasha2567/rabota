function createModal(url) {
	$('.close').click();
	$.ajax({
		url: url,
		type: 'get',
		dataType: 'html',
		success: function(data) {
			$('#modal-login').remove();
			html  = '<div id="modal-login" class="modal">';
			html += '  <div class="modal-dialog modal-lg">';
			html += '    <div class="modal-content">';
			html += '      <div class="modal-header">';
			html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button><h4></h4>';
			html += '      </div>';
			html += '      <div class="modal-body">' + data + '</div>';
			html += '    </div';
			html += '  </div>';
			html += '</div>';
			$('body').append(html);

			$('#modal-login').modal('show');
		}
	});	
}

function submitDialogForm(url,formID) {
	// Called directly, without assignment to an element:
	$.ajax({
		type: "POST",
		url: url,
		data: $("#" + formID).serialize(), // serializes the form's elements.
		success: function(data){
			$("#modal-login .modal-body").html(data);
		}
	});	
}


$(function(){
	$('#login_popup').on('click',function(){
		var href = $(this).attr('href');
		createModal(href);
		return false;
	});
});