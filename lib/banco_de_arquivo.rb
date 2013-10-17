
require 'yaml'

class BancoDeArquivo

	def salva(livro)
		File.open("livros.yaml", "a") do |arquivo|  
			arquivo.puts YAML.dump livro
			arquivo.puts ""
		end
	end

	def carrega
		$/ = "\n\n" #separado de linha para trabalhar com duas quebras
		File.open("livros.yaml", "r").map do |arquivo_serializado|
			YAML.load arquivo_serializado
		end
	end
	
end