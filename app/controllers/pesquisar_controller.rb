class PesquisarController < ApplicationController
 # GET /leilaos
  # GET /leilaos.xml
  def index
    @leilaos = Leilao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leilaos }
    end
    
    
  end


	def realizapesquisa
		
		#pesquisa no db
		@leilaos = Leilao.all(params[:leilaos])
		
		#renderiza resultado na tela
		respond_to do |format|
			format.html # index.html.erb
			format.xml  { render :xml => @leilaos }
		end
		
		

	
	end

end
