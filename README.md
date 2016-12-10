Dependências:
- Ruby 2.2.+
- Rails 4.x

Instruções:

Rodar na raiz do projeto:
```sh
bundle install
rake db:setup
rails s
```

Testes:

Os testes se encontram nas pastas /features (cucumber) e /spec (rspec)

Rodar na raiz do projeto:
```sh
rake db:migrate RAILS_ENV=test
bundle exec rspec
bundle exec rake cucumber
```
