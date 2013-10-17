require File.expand_path("lib/loja_virtual")


biblioteca = Biblioteca.new
relatorio = Relatorio.new biblioteca

puts "Valor com Desconto categoria TESTE"
biblioteca.livro_por_categoria(:sistemas_operacionais).each do |livro| 
	p livro.titulo
	p livro.valor_com_desconto
end

puts "Relatorio"
puts "Valor total dos Livros cadastrados. Total= #{relatorio.total}"
puts "Titulos:"
relatorio.titulos.each { |titulo| p titulo}
