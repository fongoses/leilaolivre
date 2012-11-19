class LeilaosController < ApplicationController
  # GET /leilaos
  # GET /leilaos.xml
  def index
    @leilaos = Leilao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leilaos }
    end
  end

  # GET /leilaos/1
  # GET /leilaos/1.xml
  def show
    @leilao = Leilao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leilao }
    end
  end

  # GET /leilaos/new
  # GET /leilaos/new.xml
  def new
    @leilao = Leilao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leilao }
    end
  end

  # GET /leilaos/1/edit
  def edit
    @leilao = Leilao.find(params[:id])
  end

  # POST /leilaos
  # POST /leilaos.xml
  def create
    @leilao = Leilao.new(params[:leilao])

    respond_to do |format|
      if @leilao.save
        flash[:notice] = 'Leilao was successfully created.'
        format.html { redirect_to(@leilao) }
        format.xml  { render :xml => @leilao, :status => :created, :location => @leilao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leilao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leilaos/1
  # PUT /leilaos/1.xml
  def update
    @leilao = Leilao.find(params[:id])

    respond_to do |format|
      if @leilao.update_attributes(params[:leilao])
        flash[:notice] = 'Leilao was successfully updated.'
        format.html { redirect_to(@leilao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leilao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leilaos/1
  # DELETE /leilaos/1.xml
  def destroy
    @leilao = Leilao.find(params[:id])
    @leilao.destroy

    respond_to do |format|
      format.html { redirect_to(leilaos_url) }
      format.xml  { head :ok }
    end
  end
end
