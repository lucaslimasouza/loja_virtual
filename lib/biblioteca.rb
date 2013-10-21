# coding: utf-8

module VendaFacil

	class Biblioteca

		def initialize()
			@banco_de_arquivo = BancoDeArquivo.new
		end

		def adiciona(midia)
			salva midia do 
				midias << midia 
			end if midia.kind_of? Midia
		end

		def midia_por_categoria(categoria)
			midias.select do |midia| 
				midia.categoria == categoria if midia.respond_to? :categoria
			end
		end

		def midias
			@midias ||= @banco_de_arquivo.carrega
		end

		private

		def salva(midia)
			@banco_de_arquivo.salva midia
			yield
		end

	end

end

