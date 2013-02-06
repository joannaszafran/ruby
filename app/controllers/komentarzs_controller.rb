class KomentarzsController < ApplicationController
  before_filter :find_uzytkowniks, :only => [:new, :edit, :update, :create]
  # GET /komentarzs
  # GET /komentarzs.json
  def index
    @komentarzs = Komentarz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @komentarzs }
    end
  end

  # GET /komentarzs/1
  # GET /komentarzs/1.json
  def show
    @komentarz = Komentarz.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @komentarz }
    end
  end

  # GET /komentarzs/new
  # GET /komentarzs/new.json
  def new
    @komentarz = Komentarz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @komentarz }
    end
  end

  # GET /komentarzs/1/edit
  def edit
    @komentarz = Komentarz.find(params[:id])
  end

  # POST /komentarzs
  # POST /komentarzs.json
  def create
    @komentarz = Komentarz.new(params[:komentarz])

    respond_to do |format|
      if @komentarz.save
        format.html { redirect_to @komentarz, notice: 'Komentarz was successfully created.' }
        format.json { render json: @komentarz, status: :created, location: @komentarz }
      else
        format.html { render action: "new" }
        format.json { render json: @komentarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /komentarzs/1
  # PUT /komentarzs/1.json
  def update
    @komentarz = Komentarz.find(params[:id])

    respond_to do |format|
      if @komentarz.update_attributes(params[:komentarz])
        format.html { redirect_to @komentarz, notice: 'Komentarz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @komentarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komentarzs/1
  # DELETE /komentarzs/1.json
  def destroy
    @komentarz = Komentarz.find(params[:id])
    @komentarz.destroy

    respond_to do |format|
      format.html { redirect_to komentarzs_url }
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
