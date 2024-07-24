@logged

Feature: Keyword panel
  Validate the creat, edit and delete keywords
  As a system user
  I want to creat, edit and delete keywords

Background:
  Being able to creat, edit and delete a set of keywords

Scenario: Creation a keyword
  Given I'm in the keywords listing
  When I press add keyword button
  And I fill "taxi" in keyword name
  And I press the advance button
  And I select 5 as relevance for the keyword
  And I press the save button
  Then I see one keyword named "taxi"

Scenario: Mark a keyword as favorite
  Given I'm in the keywords listing
  And there is only a non-favorite keyword
  When I click in the keyword favorite star
  Then the keyword is displayed as a favorite

Scenario: Unmark a keyword as favorite
  Given I'm in the keywords listing
  And there is a favorite keyword
  When I click in the keyword favorite star
  Then the keyword is displayed as non-favorite

Scenario: Change the keyword relevance
  Given I'm in the keywords listing
  And I have clicked in relevance redefinition link
  When I select 1 as relevance for the keyword
  And I press the save button
  And I go to relevance page
  Then I see 1 as keyword relevance

Scenario: Delete previously registered keyword
  Given I'm in the keywords listing
  When I press remove button for keyword
  Then I don't see any keyword named "taxi"

Scenario: Remove keyword before saving
  Given I'm in the keywords listing
  When I press add keyword button
  And I fill "Comida" in keyword name
  And I add new keyword line
  And I press to remove line 1
  Then I don't see any keyword named "Comida"

Scenario: Word limit message should not be shown when name is filled with spaces
  Given I'm in the keywords listing
  When I press add keyword button
  And I fill "          ." in keyword name
  Then I don't see an error menssage with "Você ultrapassou o limite de 10 palavras por palavras-chave."

Scenario: I can't create a keyword named only with spaces
  Given I'm in the keywords listing
  When I press add keyword button
  And I fill " " in keyword name
  And I press the advance button
  Then I see an error menssage with "Você precisa inserir ao menos uma palavra-chave."
