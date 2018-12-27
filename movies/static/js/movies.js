$(function() {
    $('#searchByTitle').click(function() {
        $.ajax({
            url: '/searchByTitle',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Title</h2>";
                $("#titleHeader").html(label);

                var data = "";
                for (var i = 0; i<list.movie.length; i++) {
                  movieID = list.movie[i][0];
                  title = list.movie[i][1];
                  releaseDate = list.movie[i][2];
                  duration = list.movie[i][3];
				  genre = list.movie[i][4];
                  data += ("<tr><td>"+movieID+"</td><td>"+title+"</td><td>"+releaseDate+"</td><td>"+duration+"</td><td>"+genre+"</td><tr>");
                }
                var result = '<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Title</th><th scope="col">Release Date</th><th scope="col">Duration</th><th scope="col">Genre</th><tbody>'+data+'</tbody></table>';
                $("#MoviesByTitle").html(result);
            },
        });
    });
});

$(function() {
    $('#searchByYear').click(function() {
        $.ajax({
            url: '/searchByYear',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(JSON.stringify(response));
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Year</h2>";
                $("#yearHeader").html(label);

                var data = "";
                for (var i = 0; i<list.movie.length; i++) {
                  movieID = list.movie[i][0];
                  title = list.movie[i][1];
                  releaseDate = list.movie[i][2];
                  duration = list.movie[i][3];
				  genre = list.movie[i][4];
                  data += ("<tr><td>"+movieID+"</td><td>"+title+"</td><td>"+releaseDate+"</td><td>"+duration+"</td><td>"+genre+"</td><tr>");
                  //console.log(data);
                }
                var result = '<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Title</th><th scope="col">Release Date</th><th scope="col">Duration</th><th scope="col">Genre</th><tbody>'+data+'</tbody></table>';
                //console.log(result);
                $("#MoviesByYear").html(result);
            },
        });
    });
});

$(function() {
    $('#searchDuration').click(function() {
        $.ajax({
            url: '/searchDuration',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Duration</h2>";
                $("#durationHeader").html(label);

                var data = "";
                for (var i = 0; i<list.movie.length; i++) {
                  movieID = list.movie[i][0];
                  title = list.movie[i][1];
                  releaseDate = list.movie[i][2];
                  duration = list.movie[i][3];
				  genre = list.movie[i][4];
                  data += ("<tr><td>"+movieID+"</td><td>"+title+"</td><td>"+releaseDate+"</td><td>"+duration+"</td><td>"+genre+"</td><tr>");
                }
                var result = '<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Title</th><th scope="col">Release Date</th><th scope="col">Duration</th><th scope="col">Genre</th><tbody>'+data+'</tbody></table>';
                $("#MoviesByDuration").html(result);
            },
        });
    });
});

$(function() {
    $('#searchMultiple').click(function() {
        $.ajax({
            url: '/searchMultiple',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Multiple Attributes</h2>";
                $("#multipleHeader").html(label);

                var data = "";
                for (var i = 0; i<list.movie.length; i++) {
                  movieID = list.movie[i][0];
                  title = list.movie[i][1];
                  releaseDate = list.movie[i][2];
                  duration = list.movie[i][3];
				  genre = list.movie[i][4];
                  data += ("<tr><td>"+movieID+"</td><td>"+title+"</td><td>"+releaseDate+"</td><td>"+duration+"</td><td>"+genre+"</td><tr>");
                }
                var result = '<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Title</th><th scope="col">Release Date</th><th scope="col">Duration</th><th scope="col">Genre</th><tbody>'+data+'</tbody></table>';
                $("#MoviesByMultiple").html(result);
            },
        });
    });
});