FactoryGirl.define do
  factory :books_group_has_book do
    book { FactoryGirl.build(:book) }
    estado 'bom'
    ano_compra '2005'
  end
end
