class WpisController < ApplicationController
  before_filter :find_uzytkowniks, :only => [:new, :edit, :update, :create]
  # GET /wpis
  # GET /wpis.json
  def index
    @wpis = Wpi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wpis }
    end
  end

  # GET /wpis/1
  # GET /wpis/1.json
  def show
    @wpi = Wpi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wpi }
    end
  end

  # GET /wpis/new
  # GET /wpis/new.json
  def new
    @wpi = Wpi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wpi }
    end
  end

  # GET /wpis/1/edit
  def edit
    @wpi = Wpi.find(params[:id])
  end

  # POST /wpis
  # POST /wpis.json
  def create
    @wpi = Wpi.new(params[:wpi])

    respond_to do |format|
      if @wpi.save
        format.html { redirect_to @wpi, notice: 'Wpi was successfully created.' }
        format.json { render json: @wpi, status: :created, location: @wpi }
      else
        format.html { render action: "new" }
        format.json { render json: @wpi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wpis/1
  # PUT /wpis/1.json
  def update
    @wpi = Wpi.find(params[:id])

    respond_to do |format|
      if @wpi.update_attributes(params[:wpi])
        format.html { redirect_to @wpi, notice: 'Wpi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wpi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wpis/1
  # DELETE /wpis/1.json
  def destroy
    @wpi = Wpi.find(params[:id])
    @wpi.destroy

    respond_to do |format|
      format.html { redirect_to wpis_url }
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
