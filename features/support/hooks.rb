Before('@logged') do
  
  visit('https://app-staging.rdstation.com.br/login')
  fill_in 'user[email]', with: "b*****h@gmail.com"
  fill_in 'user_password', with: "******"
  click_on('Entrar')
end
