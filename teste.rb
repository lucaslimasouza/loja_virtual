require File.expand_path("lib/loja_virtual")

teste_e_design = Livro.new "Lucas Lima","1234",67, 45.9, :teste
design_responsivo = Livro.new "Tarcio Zentel", "1234", 45, 24.8, :design

biblioteca = Biblioteca.new
relatorio = Relatorio.new biblioteca

biblioteca.adiciona teste_e_design
biblioteca.adiciona design_responsivo

puts "Listando autores por categoria"
biblioteca.livro_por_categoria :design
biblioteca.livro_por_categoria :teste do |livro| 
	p livro.autor
end

puts "Valor total dos Livros cadastrados. Total= #{relatorio.total}"



