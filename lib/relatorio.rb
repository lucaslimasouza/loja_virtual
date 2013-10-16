# coding: utf-8

class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end

	def total
		#@biblioteca.livros.inject(0) {|total, livro| total += livro.preco}
		@biblioteca.livros.map(&:preco).inject(:+)
	end

	def titulos
		#@biblioteca.livros.map { |livro| livro.titulo}
		@biblioteca.livros.map &:titulo
	end
	
	
end