

Dado("que eu tenho varios filmes cadastrados") do
    @genre = FactoryBot.create(:genre, name: 'Ação')  
    5.times do |v| 
        FactoryBot.create(:movie, title: "#{v } - name", title_br: "#{v } - nome", tipo: "#{v}", genre: @genre)  
      end
end

Quando("eu estou na pagina de gerenciar acervo") do
    visit movies_path
    
end
Então("eu devo ver uma lista de filmes") do
    
    expect(page).to have_content("1 - name")
    expect(page).to have_content("2 - name")
end

Dado("que eu esteja na pagina de gerenciar acervo") do
    visit movies_path
end
  

Dado("eu clico em {string} deve abrir o formulário de cadastro") do |string|
    click_on string
    expect(page).to have_content('Cadastrar Filme')
end

Dado("preencho Titulo Original com {string}") do |string|
 fill_in 'movie_title',  with: string
end

Dado("preencho Tiutlo_portugues com {string}") do |string|
    fill_in 'movie_title_br',  with: string
end
  
Dado("preencho Pais com {string}") do |string|
    fill_in 'movie_country',  with: string
end

Dado("preencho Elenco com {string}") do |string|
    fill_in 'movie_cast',  with: string
end

Dado("preencho sinopse com {string}") do |string|
    fill_in 'movie_synopsis',  with: string
end

Dado("preencho duracao com {string}") do |string|
    fill_in 'movie_duration',  with: string
end

Dado("preencho genero com {string}") do |string|
    select(@genre.name, 'movie_genre_id')
end

#Dado("preencho midia com {string}") do |string|
 #   fill_in 'movie_country',  with: string
#end

#Dado("preencho status com {string}") do |string|
#pending # Write code here that turns the phrase above into concrete actions
#end

Quando("eu clico em Criar Movie") do
    click_on 'Criar Movie'
end


Então("eu devo ver {string}") do |string| 
    expect(page).to have_content(string)
end