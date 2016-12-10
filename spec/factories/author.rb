FactoryGirl.define do
  factory :author do
    nome 'J. K. Rowling'
    nacionalidade 'Inglaterra'
    data_nascimento Date.new(1965, 7, 31)
  end
end
