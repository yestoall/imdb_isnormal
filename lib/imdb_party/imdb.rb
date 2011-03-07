module ImdbParty
  class Imdb
    include HTTParty
    include HTTParty::Icebox
    cache :store => 'file', :timeout => 120, :location => Dir.tmpdir
    
    base_uri 'app.imdb.com'
    default_params = {"api" => "v1", "appid" => "iphone1", "locale" => "en_US", "timestamp" => Time.now.to_i, "sig" => "heres my signature"}

    
    def find_by_title(title, kind = nil)
      # added by nacho@yestoall.com -> kind
      movie_results = []
      results = self.class.get('/find', :query => {:q => title}).parsed_response
      
      if results["data"] && results["data"]["results"]
        results["data"]["results"].each do |result_section|
          result_section["list"].each do |r|
            next unless r["tconst"] && r["title"]
            # added by nacho@yestoall.com -> is_a
            h = {:title => r["title"], :year => r["year"], :imdb_id => r["tconst"], :is_a => r["type"]}
            h.merge!(:poster_url => r["image"]["url"]) if r["image"] && r["image"]["url"]
            # added by nacho@yestoall.com -> update
            update = true
            update = false if kind && kind != r["type"]
            movie_results << h if update
          end
        end
      end
      
      movie_results
    end

    def find_movie_by_id(imdb_id)
      result = self.class.get('/title/maindetails', :query => {:tconst => imdb_id}).parsed_response
      Movie.new(result["data"])
    end
    
    def top_250
      results = self.class.get('/chart/top').parsed_response
      results["data"]["list"]["list"].map { |r| {:title => r["title"], :imdb_id => r["tconst"], :year => r["year"], :poster_url => (r["image"] ? r["image"]["url"] : nil)} }
    end

    def popular_shows
      results = self.class.get('/chart/tv').parsed_response
      results["data"]["list"].map { |r| {:title => r["title"], :imdb_id => r["tconst"], :year => r["year"], :poster_url => (r["image"] ? r["image"]["url"] : nil)} }
    end
    
  end
end