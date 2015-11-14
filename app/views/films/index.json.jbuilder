json.array!(@films) do |film|
  json.extract! film, :id, :title, :director, :year, :starring, :plot, :image, :rating
  json.url film_url(film, format: :json)
end
