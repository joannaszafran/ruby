class KategoriaController < ApplicationController
  before_filter :find_uzytkowniks, :only => [:new, :edit, :update, :create]
  # GET /kategoria
  # GET /kategoria.json
  def index
    @kategoria = Kategorium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kategoria }
    end
  end

  # GET /kategoria/1
  # GET /kategoria/1.json
  def show
    @kategorium = Kategorium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kategorium }
    end
  end

  # GET /kategoria/new
  # GET /kategoria/new.json
  def new
    @kategorium = Kategorium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kategorium }
    end
  end

  # GET /kategoria/1/edit
  def edit
    @kategorium = Kategorium.find(params[:id])
  end

  # POST /kategoria
  # POST /kategoria.json
  def create
    @kategorium = Kategorium.new(params[:kategorium])

    respond_to do |format|
      if @kategorium.save
        format.html { redirect_to @kategorium, notice: 'Kategorium was successfully created.' }
        format.json { render json: @kategorium, status: :created, location: @kategorium }
      else
        format.html { render action: "new" }
        format.json { render json: @kategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kategoria/1
  # PUT /kategoria/1.json
  def update
    @kategorium = Kategorium.find(params[:id])

    respond_to do |format|
      if @kategorium.update_attributes(params[:kategorium])
        format.html { redirect_to @kategorium, notice: 'Kategorium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategoria/1
  # DELETE /kategoria/1.json
  def destroy
    @kategorium = Kategorium.find(params[:id])
    @kategorium.destroy

    respond_to do |format|
      format.html { redirect_to kategoria_url }
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
