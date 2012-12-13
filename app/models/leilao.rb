class Leilao < ActiveRecord::Base

	#add validacao para alguns campos

	#lances
	has_many :lances

end
