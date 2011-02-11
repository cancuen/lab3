class MedicsController < ApplicationController
  # GET /medics
  # GET /medics.xml
  def index
    @medics = Medic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medics }
    end
  end

  # GET /medics/1
  # GET /medics/1.xml
  def show
    @medic = Medic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medic }
    end
  end

  # GET /medics/new
  # GET /medics/new.xml
  def new
    @medic = Medic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medic }
    end
  end

  # GET /medics/1/edit
  def edit
    @medic = Medic.find(params[:id])
  end

  # POST /medics
  # POST /medics.xml
  def create
    @medic = Medic.new(params[:medic])

    respond_to do |format|
      if @medic.save
        format.html { redirect_to(@medic, :notice => 'Medic was successfully created.') }
        format.xml  { render :xml => @medic, :status => :created, :location => @medic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medics/1
  # PUT /medics/1.xml
  def update
    @medic = Medic.find(params[:id])

    respond_to do |format|
      if @medic.update_attributes(params[:medic])
        format.html { redirect_to(@medic, :notice => 'Medic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medics/1
  # DELETE /medics/1.xml
  def destroy
    @medic = Medic.find(params[:id])
    @medic.destroy

    respond_to do |format|
      format.html { redirect_to(medics_url) }
      format.xml  { head :ok }
    end
  end
end
