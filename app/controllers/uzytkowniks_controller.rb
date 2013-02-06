class UzytkowniksController < ApplicationController
  # GET /uzytkowniks
  # GET /uzytkowniks.json
  def index
    @uzytkowniks = Uzytkownik.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uzytkowniks }
    end
  end

  # GET /uzytkowniks/1
  # GET /uzytkowniks/1.json
  def show
    @uzytkownik = Uzytkownik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uzytkownik }
    end
  end

  # GET /uzytkowniks/new
  # GET /uzytkowniks/new.json
  def new
    @uzytkownik = Uzytkownik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uzytkownik }
    end
  end

  # GET /uzytkowniks/1/edit
  def edit
    @uzytkownik = Uzytkownik.find(params[:id])
  end

  # POST /uzytkowniks
  # POST /uzytkowniks.json
  def create
    @uzytkownik = Uzytkownik.new(params[:uzytkownik])

    respond_to do |format|
      if @uzytkownik.save
        format.html { redirect_to @uzytkownik, notice: 'Uzytkownik was successfully created.' }
        format.json { render json: @uzytkownik, status: :created, location: @uzytkownik }
      else
        format.html { render action: "new" }
        format.json { render json: @uzytkownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uzytkowniks/1
  # PUT /uzytkowniks/1.json
  def update
    @uzytkownik = Uzytkownik.find(params[:id])

    respond_to do |format|
      if @uzytkownik.update_attributes(params[:uzytkownik])
        format.html { redirect_to @uzytkownik, notice: 'Uzytkownik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uzytkownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uzytkowniks/1
  # DELETE /uzytkowniks/1.json
  def destroy
    @uzytkownik = Uzytkownik.find(params[:id])
    @uzytkownik.destroy

    respond_to do |format|
      format.html { redirect_to uzytkowniks_url }
      format.json { head :no_content }
    end
  end
end
