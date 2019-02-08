def create_admin
  @registered_admin = FactoryBot.create(:admin, 
                                        email: 'admin@mail.test', 
                                        password: 'pa$$word',
                                        password_confirmation: 'pa$$word')
end

def sign_in
  visit root_path
  fill_in 'admin_email', with: 'admin@mail.test'
  fill_in 'admin_password', with: 'pa$$word'
  click_button 'Entrar'
  
end

Dado("que eu seja um administrador registrado") do
  create_admin
end

Dado("esteja logado como administrador") do
  sign_in
  expect(page).to have_content('Login efetuado com sucesso!')
end


Dado("que eu tenho varios clientes cadastrados") do
        
        5.times do |v| 
          FactoryBot.create(:customer, name: "#{v } - nome", 
                                       cpf: "#{v } - CPF", password: "#{v } - pass", 
                                       password_confirmation: "#{v } - pass", email: "#{v }@mail.com")  
        end

        
end

Quando("eu visito a pagina de gerenciamento dos clientes") do
 
  visit customers_path
  expect(page).to have_content('1 - CPF MyString MyString ')
end

Então("eu devo ver uma lista de Clientes") do
        expect(page).to have_content("1 - nome")
        expect(page).to have_content("2 - nome")
end

Dado("que eu estou na pagina de administração dos clientes") do
  #@registered_admin
  visit customers_path
  expect(page).to have_content("Gerenciar Clientes")
end

Dado("clico no link de Cadastrar Cliente") do
  click_on 'Cadastrar Cliente'
end

Dado("eu preencho o Nome com {string}") do |string|
  fill_in 'customer_name', with: string
end
Dado("eu preencho email com {string}") do |string|
  fill_in 'customer_email', with: string
end

Dado("eu preencho senha com {string}") do |string|
  fill_in 'customer_password', with: string
end

Dado("eu preencho confirmar_senha com {string}") do |string|
  fill_in 'customer_password_confirmation', with: string
end

Dado("eu preencho endereço com {string}") do |string|
  fill_in 'customer_address', with: string
end

Dado("eu preencho telefone_fixo com {string}") do |string|
  fill_in 'customer_phone', with: string
end

Dado("eu preencho local_trabalho com {string}") do |string|
  fill_in 'customer_workplace', with: string
end

Dado("eu preencho telefone_comercial com {string}") do |string|
  fill_in 'customer_comercial_phone', with: string
end

Dado("eu preencho celular com {string}") do |string|
  fill_in 'customer_cellphone', with: string
end

Dado("eu preencho sexo com {string}") do |string|
 select( string, from: 'customer_sgender')
end

Dado("eu preencho CPF com {string}") do |string|
  fill_in 'customer_cpf', with: string
end

#Dado("eu preencho data_nascimento  com {string}") do |string|
 # fill_in 'customer_date_of_birth', with: string
#end

Quando("salvar") do
  click_on 'Criar Customer'
end

Então("eu devo ver Cliente Criado") do 
  expect(page).to have_content("Customer was successfully created")
end

Dado("que eu esteja na pagina de gerenciar clientes") do
  @customer = FactoryBot.create(:customer, name: "Zé ninguem", cpf: "123.456.789-01",
                                          password: "password", 
                                          password_confirmation: "password", email: "ze@mail.com", 
                                          active: true)  
  visit customers_path
  
end

Dado("o Cliente {string} esteja ativado") do |string|
  expect(page).to have_content('Zé ninguem')
  expect(page).to have_content('Sim')
end

Dado("eu clico em editar o Cliente {string}") do |string|
 visit edit_customer_path(@customer)
 
end

Quando("eu clico em {string} e depois em Editar Customer") do |string|
  uncheck('customer_active')
  fill_in 'customer_password', with: '123456'
  fill_in 'customer_password_confirmation', with: '123456'
  click_on 'Atualizar Customer'
end

Então("eu devo ver Cliente Atualizado") do
  expect(page).to have_content('Customer was successfully updated')

end

Então("eu devo ver {string}") do |string|
  expect(page).to have_content(string)
end