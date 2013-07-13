/*global $, console */
$(".addDirector").click(function () {
	'use strict';

	var lastIdNum = $('tbody.directorList tr:last input[type=hidden]:first').val(),
		newIdNum;
	console.log(lastIdNum);
	if (lastIdNum  > 0) {
		newIdNum = parseInt(lastIdNum, 10) + 1;
	} else {
		newIdNum = 1;
	}

	$('tbody.directorList').append('<tr>' +
		'<td><input type="hidden" name="director.id" value="' + newIdNum + '"></td>' +
		'<td><input type="text" name="director.firstName"></td>' +
		'<td><input type="text" name="director.lastName"></td>' +
		'<td><div class="deleteDirector ui-state-default ui-corner-all" title="Delete">' +
		'<span class="ui-icon ui-icon-circle-close"></span></div>' +
		'</tr>');

	$(".deleteDirector").click(function () {
		$(this).parent().parent().remove();
	});
	
	return false;

});







$(".addMovie").click(function () {

	'use strict';

	var lastIdNum = $('tbody.movieList tr:last input[type=hidden]:first').val(),
		newIdNum;
	console.log(lastIdNum);
	if (lastIdNum  > 0) {
		newIdNum = parseInt(lastIdNum, 10) + 1;
	} else {
		newIdNum = 1;
	}

	$('tbody.movieList').append('<tr>' +
		'<td><input type="text" name="movie[' + newIdNum + '].title"></td></tr>');
	return false;

});






