class SecaosController < ApplicationController
  # GET /secaos
  # GET /secaos.xml
  def index
    @secaos = Secao.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secaos }
    end
  end

  # GET /secaos/1
  # GET /secaos/1.xml
  def show
    @secao = Secao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @secao }
    end
  end

  # GET /secaos/new
  # GET /secaos/new.xml
  def new
    @secao = Secao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @secao }
    end
  end

  # GET /secaos/1/edit
  def edit
    @secao = Secao.find(params[:id])
  end

  # POST /secaos
  # POST /secaos.xml
  def create
    @secao = Secao.new(params[:secao])

    respond_to do |format|
      if @secao.save
        flash[:notice] = 'Secao was successfully created.'
        format.html { redirect_to(@secao) }
        format.xml  { render :xml => @secao, :status => :created, :location => @secao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @secao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secaos/1
  # PUT /secaos/1.xml
  def update
    @secao = Secao.find(params[:id])

    respond_to do |format|
      if @secao.update_attributes(params[:secao])
        flash[:notice] = 'Secao was successfully updated.'
        format.html { redirect_to(@secao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @secao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secaos/1
  # DELETE /secaos/1.xml
  def destroy
    @secao = Secao.find(params[:id])
    @secao.destroy

    respond_to do |format|
      format.html { redirect_to(secaos_url) }
      format.xml  { head :ok }
    end
  end
end
