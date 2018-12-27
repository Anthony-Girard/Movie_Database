$(function() {
    $('#searchByActor').click(function() {
        $.ajax({
            url: '/searchByActor',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Actor</h2>";
                $("#actorHeader").html(label);

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
                $("#ActorsMovies").html(result);
            },
        });
    });
});

$(function() {
    $('#searchByDirector').click(function() {
        $.ajax({
            url: '/searchByDirector',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Director</h2>";
                $("#directorHeader").html(label);

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
                $("#DirectorsMovies").html(result);
            },
        });
    });
});

$(function() {
    $('#searchPeopleByMovie').click(function() {
        $.ajax({
            url: '/searchPeopleByMovie',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(JSON.stringify(response));
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>People by Movie</h2>";
                $("#peopleHeader").html(label);

                var data = "";
                for (var i = 0; i<list.people.length; i++) {
                  personID = list.people[i][0];
                  personName = list.people[i][1];
                  personAge = list.people[i][2];
                  data += ("<tr><td>"+personID+"</td><td>"+personName+"</td><td>"+personAge+"</td><tr>");
                  //console.log(data);
                }
                var result = '<table class="table"><thead><tr><th scope="col">ID</th><th scope="col">Name</th><th scope="col">Age</th><tbody>'+data+'</tbody></table>';
                //console.log(result);
                $("#PeopleInMovie").html(result);
            },
            //error: function(error) {
            //   console.log("Error :(");
            //}
        });
    });
});