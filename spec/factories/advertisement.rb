FactoryGirl.define do
  factory :advertisement do
    titulo 'Harry Potter - Bom estado'
    descricao 'Moro em Sao Paulo, entrego na sua casa'
    books_group { FactoryGirl.build(:books_group) }
    user { FactoryGirl.build(:user) }
    ativo true
  end
end
