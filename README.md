# imdb_isnormal

## How To Use

###In the same way of imdb_party.
	
###but i've add one optional parameter to imdb.find_by_title
	
	only for "tv_series" result
	
	movie = imdb.find_by_title("lost", "tv_series") 		
	
###also we can get one more item in our searchs -> is_a
	
    movie = imdb.find_movie_by_id("tt0468569")

    movie.title => "The Dark Knight"
    movie.rating => 8.1
    movie.certification => "PG-13"
movie.is_a => "feature"

