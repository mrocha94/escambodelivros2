Feature: create an advertisement
  As a user,
  So I can sell or exchange my books
  I want to create an advertisement



Background: user have been added to database
  Given the following user exist:
  | nome  | email             | password  | cpf           | telefone      |
  | John  | john@johnson.com  | 123456    | 12345678909   | 12345678901   |
  Given the following book exist:
  | titulo          | isbn          | editora   | edicao  | idioma |
  | The Great Hunt  | 0-312-85140-5 | Tor Books | 1       | Ingles |
  And I am logged in as "john@johnson.com", "123456"
  And I am on "the homepage"


Scenario: create an advertisement
  When I follow "+"
  And I fill in the following:
  | advertisement_titulo    | Um anuncio   |
  | advertisement_descricao | Alguma coisa |
  And I press "Save"
  And I follow "+"
  And I select "The Great Hunt" from "books_group_has_book_book_id"
  And I fill in the following:
  | books_group_has_book_estado      | bom   |
  | books_group_has_book_ano_compra  | 2005  |
  And I press "Save"
  Then should exists "Um anuncio" advertisement
