$(function() {
    $('#searchMovieReview').click(function() {
        $.ajax({
            url: '/searchMovieReview',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movie Reviews</h2>";
                $("#reviewHeader").html(label);

				rating = "<h4>Rating: " + list.rating + " out of 5 stars<h4>";
                $("#reviewAvgRating").html(rating);
				
                var data = "";
                for (var i = 0; i<list.reviews.length; i++) {
                  reviewID = list.reviews[i][0];
                  rating = list.reviews[i][2];
				  comments = list.reviews[i][3];
                  data += ("<tr><td>"+reviewID+"</td><td>"+rating+"</td><td>"+comments+"</td><tr>");
                }
                var result = '<table class="table"><thead><tr><th scope="col">Review ID</th><th scope="col">Rating</th><th scope="col">Comments</th><tbody>'+data+'</tbody></table>';
                $("#ReviewMovies").html(result);
            },
        });
    });
});

$(function() {
    $('#searchRating').click(function() {
        $.ajax({
            url: '/searchRating',
            data: $('form').serialize(),
            type: 'POST',
            complete: function(response) {
				console.log(response.responseText);
				list = JSON.parse(response.responseText);
                var label = "";
                label += "<h2>Movies by Rating</h2>";
                $("#ratingHeader").html(label);

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
                $("#RatingMovies").html(result);
            },
        });
    });
});