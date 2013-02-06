class WydarzeniesController < ApplicationController
  before_filter :find_uzytkowniks, :only => [:new, :edit, :update, :create]
  # GET /wydarzenies
  # GET /wydarzenies.json
  def index
    @wydarzenies = Wydarzenie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wydarzenies }
    end
  end

  # GET /wydarzenies/1
  # GET /wydarzenies/1.json
  def show
    @wydarzeny = Wydarzenie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wydarzeny }
    end
  end

  # GET /wydarzenies/new
  # GET /wydarzenies/new.json
  def new
    @wydarzeny = Wydarzenie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wydarzeny }
    end
  end

  # GET /wydarzenies/1/edit
  def edit
    @wydarzeny = Wydarzenie.find(params[:id])
  end

  # POST /wydarzenies
  # POST /wydarzenies.json
  def create
    @wydarzeny = Wydarzenie.new(params[:wydarzeny])

    respond_to do |format|
      if @wydarzeny.save
        format.html { redirect_to @wydarzeny, notice: 'Wydarzenie was successfully created.' }
        format.json { render json: @wydarzeny, status: :created, location: @wydarzeny }
      else
        format.html { render action: "new" }
        format.json { render json: @wydarzeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wydarzenies/1
  # PUT /wydarzenies/1.json
  def update
    @wydarzeny = Wydarzenie.find(params[:id])

    respond_to do |format|
      if @wydarzeny.update_attributes(params[:wydarzeny])
        format.html { redirect_to @wydarzeny, notice: 'Wydarzenie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wydarzeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wydarzenies/1
  # DELETE /wydarzenies/1.json
  def destroy
    @wydarzeny = Wydarzenie.find(params[:id])
    @wydarzeny.destroy

    respond_to do |format|
      format.html { redirect_to wydarzenies_url }
      format.json { head :no_content }
    end
  end

protected
    def find_uzytkowniks
      @uzytkowniks = Uzytkownik.find(:all).map do |uzytkownik|
        [ uzytkownik.login, uzytkownik ]
      end
    end

end
