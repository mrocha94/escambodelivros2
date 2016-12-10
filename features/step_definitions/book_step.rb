Given /the following book exist/ do |books_table|
  books_table.hashes.each do |book|
    Book.create(book)
  end
end
