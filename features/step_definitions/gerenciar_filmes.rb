Dado("que eu tenho varios filmes cadastrados") do
    @genre = FactoryBot.create(:genre, name: 'Ação')  
    @movie = Movie.new
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

