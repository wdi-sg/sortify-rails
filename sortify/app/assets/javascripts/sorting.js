// alert("Welcome to the song page")
//
// alert("First Song => " + gon.songs[0].title);

window.onload = function(){

	$('#sort').click(function(){

    // alert("Sorting button clicked...");

		var desc = function(a,b){
		  console.log( a,b );
		  return $(b).children('.song-title').text() < $(a).children('.song-title').text();
		};

		var asc = function(a,b){
		  return $(b).children('.song-title').text() > $(a).children('.song-title').text();
		};

		var sortedRows = $('tbody tr').sort(desc);

		$('tbody').empty()
		$('tbody').append(sortedRows)
	});
};
