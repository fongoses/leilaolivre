class LancesController < ApplicationController


	def create
    		@leilao = Leilao.find(params[:userId])
	    	@lance = @leilao.lances.create(params[:idUsuario])
    		redirect_to leilao_path(@leilao)
  	end

end
