require "open-uri"

10.times do
  file = URI.open("https://source.unsplash.com/random/?city,night")
  article = Article.new(title: "City night", body: "A great night")
  article.photo.attach(io: file, filename: "night.png", content_type: "image/png")
  article.save
end
