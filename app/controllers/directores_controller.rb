class DirectoresController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  # GET /directores
  # GET /directores.json
  def index
    @directores = Director.all
  end

  # GET /directores/1
  # GET /directores/1.json
  def show
  end

  # GET /directores/new
  def new
    @director = Director.new
  end

  # GET /directores/1/edit
  def edit
  end

  # POST /directores
  # POST /directores.json
  def create
    @director = Director.new(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render action: 'show', status: :created, location: @director }
      else
        format.html { render action: 'new' }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directores/1
  # PATCH/PUT /directores/1.json
  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to @director, notice: 'Director was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directores/1
  # DELETE /directores/1.json
  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def director_params
      params.require(:director).permit(:nombre, :apellido, :direccion, :telefono)
    end
end
