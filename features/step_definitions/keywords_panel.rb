Given(/^I\'m in the keywords listing$/) do
  click_link 'Atrair'
  click_link 'Painel de palavras-chave'
end

Given(/^there is only a non\-favorite keyword$/) do
  expect(page).to have_no_css(".favorite-keyword-link.selected")
end

Given(/^I click on redefine relevance link$/) do
  click_on 'Redefinir relevância'
end

Given(/^there is a favorite keyword$/) do
  expect(page).to have_css(".favorite-keyword-link.selected")
end

Given(/^I have clicked in relevance redefinition link$/) do
  click_on 'Redefinir relevância'
end

When(/^I save and finish the keyword register$/) do
  click_on 'Salvar e finalizar'
end

When(/^I press to remove line (\d+)$/) do |line|
  page.find(:xpath, "//div[@class='js-single-keyword'][#{line}]").click_link('Remover palavra-chave')
end

When(/^I click in the keyword favorite star$/) do
  click_link 'Marcar como favorito'
  sleep 2
end

When(/^I add new keyword line$/) do
  click_link 'Adicionar palavra-chave'
end

When(/^I select (\d+) as relevance for the keyword$/) do  |relevance|
  select relevance, from: 'keywords_panel_keywords_attributes_0_relevance'
end

When(/^I press the save button$/) do
  click_on 'Salvar e finalizar'
end

When(/^I go to relevance page$/) do
  click_on 'Redefinir relevância'
end

When(/^I press add keyword button$/) do
  click_on 'Adicionar palavras-chave'
end

When(/^I fill "([^"]*)" in keyword name$/) do |keyword|
  fill_in'keyword[]', with: keyword
end

When(/^I press the advance button$/) do
  click_on 'new-keywords-btn-save'
end

Then(/^I see one keyword named "([^"]*)"$/) do |relevance|
  expect(page).to have_content(relevance)
end

When(/^I press remove button for keyword$/) do
  click_on 'Apagar'
  page.driver.browser.switch_to.alert.accept
  expect(page).to have_selector(".alert", text: "Palavra-chave removida com sucesso.")
end

Then(/^I don't see any keyword named "([^"]*)"$/) do |keyword|
  expect(page).to have_no_content(keyword)
end

Then(/^I see (\d+) as keyword relevance$/) do |relevance|
  expect(page).to have_select("keywords_panel_keywords_attributes_0_relevance", selected: relevance)
end

Then(/^the keyword listing should be displayed with the registered "([^"]*)"$/) do |keyword|
  expect(page).to have_selector(".alert", text: "Palavras-chave adicionadas com sucesso.")
  expect(page).to have_content(keyword)
  expect(page).to have_selector("#keywords-counter", text: "1")
end

Then(/^I see an error menssage with "([^"]*)"$/) do |erro|
  expect(page).to have_selector(".alert", text: erro)
end

Then(/^I don't see an error menssage with "([^"]*)"$/) do |erro|
 expect(page).to have_no_content("Você ultrapassou o limite de 10 palavras por palavras-chave.")
end

Then(/^the keyword is displayed as a favorite$/) do
  expect(page).to have_css(".favorite-keyword-link.selected")
end

Then(/^the keyword is displayed as non\-favorite$/) do
  expect(page).to have_no_css(".favorite-keyword-link.selected")
end
