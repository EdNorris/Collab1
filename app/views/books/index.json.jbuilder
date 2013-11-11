json.array!(@books) do |book|
  json.extract! book, :name, :author
  json.url book_url(book, format: :json)
end
