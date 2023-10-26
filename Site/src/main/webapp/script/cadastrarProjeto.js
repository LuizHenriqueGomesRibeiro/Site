function visualizarImg(foto64, foto) {
	var preview = document.getElementById(foto64);
	var file = document.getElementById(foto).files[0];
	var reader = new FileReader();
	reader.onloadend = function() {
		preview.src = reader.result;
	};
	if (file) {
		reader.readAsDataURL(file);
	} else {
		preview.src = '';
	}
}
