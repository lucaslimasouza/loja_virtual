
require 'yaml'

class BancoDeArquivo

	def salva(livro)
		File.open("livros.yaml", "a") do |arquivo|  
			arquivo.puts YAML.dump livro
			arquivo.puts ""
		end
	end
	
end