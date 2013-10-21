# coding: utf-8

require "fileutils"

class Revista < Midia

	include FormatadorMoeda
	include ActiveFile

	field :titulo
	field :valor
	formata_moeda :valor_com_desconto, :valor

end