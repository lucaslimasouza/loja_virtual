require File.expand_path("lib/loja_virtual")


biblioteca = Biblioteca.new
relatorio = Relatorio.new biblioteca


puts "Listando autores por categoria"
biblioteca.livro_por_categoria :design
biblioteca.livro_por_categoria :teste do |livro| 
	p livro.autor
end

puts "Relatorio"
puts "Valor total dos Livros cadastrados. Total= #{relatorio.total}"
puts "Titulos:"
relatorio.titulos.each { |titulo| p titulo}



