
*Automatização da funcionalidade palavras-chave*

A automação foi feita usando Capybara, Cucumber.
Utilizei um hook para fazer o login antes de cada cenário e tentei cobrir os principais cenários

Os seguintes cenários foram automatizados:

- Creation of a keyword
- Mark a keyword as favorite
- Unmark a keyword as favorite
- Change the keyword relevance
- Delete previously registered keyword
- Remove keyword before saving
- Word limit message should not be shown when name is filled with spaces
- I can't create a keyword named only with spaces

*Para que os testes funcionem de forma adequada é preciso que não exista nenhma palavras-chave pré cadastrada*


Como executar

"bundle install && bundle exec cucumber" na pasta do projeto
