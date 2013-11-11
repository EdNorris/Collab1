json.array!(@book_words) do |book_word|
  json.extract! book_word, :bookid, :wordid, :count
  json.url book_word_url(book_word, format: :json)
end
