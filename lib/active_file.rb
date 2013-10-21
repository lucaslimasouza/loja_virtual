require "fileutils"

module ActiveFile

	def save
		@new_record = false
		File.open("db/revistas/#{@id}.yml", "w") do |arquivo| 
			arquivo.puts serialize
		end
	end

	def destroy
		unless destroyed or @new_record
			@destroyed = true
			FileUtils.rm "db/revistas/#{@id}.yml"
		end
	end

	module ClassMethods

		def find(id)
			raise DocumentNotFound, "Arquivo db/revistas/#{id} nao encontrado.", caller unless File.exists?("db/revistas/#{id}.yml")
        	YAML.load File.open("db/revistas/#{id}.yml", "r")
		end

		def next_id
			Dir.glob("db/revistas/*.yml").size + 1
		end

	end

	def self.included(base)
		base.extend ClassMethods
	end

	private

	def serialize
		YAML.dump self
	end

end