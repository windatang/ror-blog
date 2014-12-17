class ToplicsController < ApplicationController
  before_action :set_toplic, only: [:show, :edit, :update, :destroy]

  # GET /toplics
  # GET /toplics.json
  def index
    @toplics = Toplic.all
  end

  # GET /toplics/1
  # GET /toplics/1.json
  def show
  end

  # GET /toplics/new
  def new
    @toplic = Toplic.new
  end

  # GET /toplics/1/edit
  def edit
  end

  # POST /toplics
  # POST /toplics.json
  def create
    @toplic = Toplic.new(toplic_params)

    respond_to do |format|
      if @toplic.save
        format.html { redirect_to @toplic, notice: 'Toplic was successfully created.' }
        format.json { render :show, status: :created, location: @toplic }
      else
        format.html { render :new }
        format.json { render json: @toplic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toplics/1
  # PATCH/PUT /toplics/1.json
  def update
    respond_to do |format|
      if @toplic.update(toplic_params)
        format.html { redirect_to @toplic, notice: 'Toplic was successfully updated.' }
        format.json { render :show, status: :ok, location: @toplic }
      else
        format.html { render :edit }
        format.json { render json: @toplic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toplics/1
  # DELETE /toplics/1.json
  def destroy
    @toplic.destroy
    respond_to do |format|
      format.html { redirect_to toplics_url, notice: 'Toplic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toplic
      @toplic = Toplic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toplic_params
      params.require(:toplic).permit(:title, :description, :linkwith)
    end
end
