$(document).ready(function() {
		$('#vdeleteAcc').hide();
		$('#vdeleteAccount').click(function() {
			var tx = $('#vdeleteAcc').text();
			url = "vdeleteAccount.htm?massage=" + tx;
			document.location.href = url;
		});

	});