# coding: utf-8

class Biblioteca

	def initialize()
		@banco_de_arquivo = BancoDeArquivo.new
	end

	def adiciona(livro)
		salva livro do 
			livros << livro 
		end
	end

	def livro_por_categoria(categoria)
		livros.select {|livro| livro.categoria == categoria}
	end

	def livros
		@livros ||= @banco_de_arquivo.carrega
	end

	private

	def salva(livro)
		@banco_de_arquivo.salva livro
		yield
	end

end