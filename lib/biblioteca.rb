# coding: utf-8

class Biblioteca

	attr_reader :livros

	def initialize()
		@livros = {}
	end

	def adiciona(livro)
		@livros[livros.categoria] ||= [] 
		@livros[livros.categoria] << livro
	end

	def livros
		@livros.values.flatten
	end
end