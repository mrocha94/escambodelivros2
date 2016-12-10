FactoryGirl.define do
  factory :books_group do
    after(:create) do |bg|
      bg.books_group_has_books << FactoryGirl.build(:books_group_has_book)
    end
  end
end
