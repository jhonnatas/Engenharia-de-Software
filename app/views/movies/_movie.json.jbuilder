json.extract! movie, :id, :title, :title_br, :year, :cast, :synopsis, :type, :duration, :img, :country, :created_at, :updated_at
json.url movie_url(movie, format: :json)
