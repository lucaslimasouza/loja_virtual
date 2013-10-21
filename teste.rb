require File.expand_path("lib/loja_virtual")


biblioteca = VendaFacil::Biblioteca.new
relatorio = Relatorio.new biblioteca
revista = Revista.find 1

puts revista.titulo


puts "Valor com Desconto categoria"
biblioteca.midia_por_categoria(:sistemas_operacionais).each do |midia| 
	p midia.titulo
	p midia.valor_com_desconto
	p midia.valor_formatado
end

puts "-----------Relatorio-----------"
puts "Valor total dos Livros cadastrados. Total= #{relatorio.total}"
puts "Titulos:"
relatorio.titulos.each { |titulo| p titulo}
