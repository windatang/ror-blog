json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :comments
  json.url article_url(article, format: :json)
end
