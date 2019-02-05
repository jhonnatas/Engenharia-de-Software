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

    def sign_out
      visit root_path
      click_on 'Sair'
      
    end
    
    Dado("que eu seja um admin registrado e eu visit a pagina principal do sistema") do
      create_admin
      
    end
  
    Então("eu estou logado") do
      sign_in
      expect(page).to have_content('Login efetuado com sucesso!')
    end
  
    Dado("que eu estou logado") do
      create_admin
      sign_in
      expect(page).to have_content('Gerenciar Clientes')
    end
    
    Dado("eu clico em sair") do
      sign_out
    end
    
    Então("eu estou deslogado") do
      expect(page).to have_content('Para continuar, efetue login ou registre-se.')
    end