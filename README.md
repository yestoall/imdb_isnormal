# imdb_isnormal

## How To Use

###In the same way of imdb_party.
	
###but i've add one optional parameter to imdb.find_by_title
	
	(only for "tv_series" result)
	
	movie = imdb.find_by_title("lost", "tv_series") 		
	
###also we can get one more item in our searchs -> is_a
	
    imdb = ImdbParty::Imdb.new
    data = imdb.find_by_title("2001")

    data.each do |m|
		kind_of = m[:is_a]
    end	

###*this is "my" first gem. 
###*sorry about my english, my spanish is better (i hope).