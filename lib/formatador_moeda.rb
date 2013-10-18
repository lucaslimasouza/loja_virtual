# coding: utf-8

module FormatadorMoeda

	module ClassMethods

		def formata_moeda(*variaveis_e_metodos)
			variaveis_e_metodos.each do |nome|
				define_method("#{nome}_formatado") do
					valor = respond_to?(nome) ? send(nome) : instance_variable_get("@#{nome}")
					"R$ #{valor}"
				end
			end
		end

	end

	def self.included(classe_que_incluiu_modulo)
		classe_que_incluiu_modulo.extend ClassMethods
	end


end