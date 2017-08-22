class SubadsController < ApplicationController
  before_action :set_subad, only: [:show, :edit, :update, :destroy]


  # GET /subads
  # GET /subads.json
  def index
    @subads = Subad.all
  end

  # GET /subads/1
  # GET /subads/1.json
  def show
  end

  # GET /subads/new
  def new
    if current_person.admin == true
    @subad = Subad.new
  else
    redirect_to root_path, notice: 'Sorry, not authorized to add a Freebie :-).'
    end
  end

  # GET /subads/1/edit
  def edit
  end

  # POST /subads
  # POST /subads.json
  def create
    @subad = Subad.new(subad_params)

    respond_to do |format|
      if @subad.save
        format.html { redirect_to @subad, notice: 'Subad was successfully created.' }
        format.json { render :show, status: :created, location: @subad }
      else
        format.html { render :new }
        format.json { render json: @subad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subads/1
  # PATCH/PUT /subads/1.json
  def update
    respond_to do |format|
      if @subad.update(subad_params)
        format.html { redirect_to @subad, notice: 'Subad was successfully updated.' }
        format.json { render :show, status: :ok, location: @subad }
      else
        format.html { render :edit }
        format.json { render json: @subad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subads/1
  # DELETE /subads/1.json
  def destroy
    @subad.destroy
    respond_to do |format|
      format.html { redirect_to subads_url, notice: 'Subad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subad
      @subad = Subad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subad_params
      params.require(:subad).permit(:title, :image, :url, :content, :brand)
    end
end
