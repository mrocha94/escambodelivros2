FactoryGirl.define do
  factory :book do
    titulo 'Harry Potter and the Philosopher\'s Stone'
    isbn '0-7475-3269-9'
    editora 'Bloomsbury Publishing'
    edicao 1
    idioma 'Inglês'
    num_paginas 223
    ano 1997
    sinopse "Harry Potter has no idea how famous he is. That's because he's being raised by his miserable aunt and uncle who are terrified Harry will learn that he's really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny."

    after(:create) do |b|
      b.authors << FactoryGirl.build(:author)
      b.categories << FactoryGirl.build(:category)
    end
  end
end
