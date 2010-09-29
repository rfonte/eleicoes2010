class EleitorsController < ApplicationController
  # GET /eleitors
  # GET /eleitors.xml
  def index
    @eleitors = Eleitor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eleitors }
    end
  end

  # GET /eleitors/1
  # GET /eleitors/1.xml
  def show
    @eleitor = Eleitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @eleitor }
    end
  end

  # GET /eleitors/new
  # GET /eleitors/new.xml
  def new
    @eleitor = Eleitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @eleitor }
    end
  end

  # GET /eleitors/1/edit
  def edit
    @eleitor = Eleitor.find(params[:id])
  end

  # POST /eleitors
  # POST /eleitors.xml
  def create
    @eleitor = Eleitor.new(params[:eleitor])

    respond_to do |format|
      if @eleitor.save
        flash[:notice] = 'Eleitor was successfully created.'
        format.html { redirect_to(@eleitor) }
        format.xml  { render :xml => @eleitor, :status => :created, :location => @eleitor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @eleitor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /eleitors/1
  # PUT /eleitors/1.xml
  def update
    @eleitor = Eleitor.find(params[:id])

    respond_to do |format|
      if @eleitor.update_attributes(params[:eleitor])
        flash[:notice] = 'Eleitor was successfully updated.'
        format.html { redirect_to(@eleitor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @eleitor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /eleitors/1
  # DELETE /eleitors/1.xml
  def destroy
    @eleitor = Eleitor.find(params[:id])
    @eleitor.destroy

    respond_to do |format|
      format.html { redirect_to(eleitors_url) }
      format.xml  { head :ok }
    end
  end
end
