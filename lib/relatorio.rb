# coding: utf-8

class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end

	def total
		#@biblioteca.livros.inject(0) {|total, livro| total += livro.preco}
		@biblioteca.midias.map(&:valor).inject(:+)
	end

	def titulos
		#@biblioteca.livros.map { |livro| livro.titulo}
		@biblioteca.midias.map &:titulo
	end
	
	
end