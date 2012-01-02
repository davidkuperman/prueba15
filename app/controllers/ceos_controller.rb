class CeosController < ApplicationController
  # GET /ceos
  # GET /ceos.xml
  def index
    @ceos = Ceo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ceos }
    end
  end

  # GET /ceos/1
  # GET /ceos/1.xml
  def show
    @ceo = Ceo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ceo }
    end
  end

  # GET /ceos/new
  # GET /ceos/new.xml
  def new
    @ceo = Ceo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ceo }
    end
  end

  # GET /ceos/1/edit
  def edit
    @ceo = Ceo.find(params[:id])
  end

  # POST /ceos
  # POST /ceos.xml
  def create
    @ceo = Ceo.new(params[:ceo])

    respond_to do |format|
      if @ceo.save
        format.html { redirect_to(@ceo, :notice => 'Ceo was successfully created.') }
        format.xml  { render :xml => @ceo, :status => :created, :location => @ceo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ceo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ceos/1
  # PUT /ceos/1.xml
  def update
    @ceo = Ceo.find(params[:id])

    respond_to do |format|
      if @ceo.update_attributes(params[:ceo])
        format.html { redirect_to(@ceo, :notice => 'Ceo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ceo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ceos/1
  # DELETE /ceos/1.xml
  def destroy
    @ceo = Ceo.find(params[:id])
    @ceo.destroy

    respond_to do |format|
      format.html { redirect_to(ceos_url) }
      format.xml  { head :ok }
    end
  end
end
