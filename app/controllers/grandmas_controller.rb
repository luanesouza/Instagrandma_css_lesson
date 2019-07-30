class GrandmasController < ApplicationController
  before_action :set_grandma, only: [:show, :edit, :update, :destroy]

  # GET /grandmas
  # GET /grandmas.json
  def index
    @grandmas = Grandma.all
  end

  # GET /grandmas/1
  # GET /grandmas/1.json
  def show
  end

  # GET /grandmas/new
  def new
    @grandma = Grandma.new
  end

  # GET /grandmas/1/edit
  def edit
  end

  # POST /grandmas
  # POST /grandmas.json
  def create
    @grandma = Grandma.new(grandma_params)

    respond_to do |format|
      if @grandma.save
        format.html { redirect_to @grandma, notice: 'Grandma was successfully created.' }
        format.json { render :show, status: :created, location: @grandma }
      else
        format.html { render :new }
        format.json { render json: @grandma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grandmas/1
  # PATCH/PUT /grandmas/1.json
  def update
    respond_to do |format|
      if @grandma.update(grandma_params)
        format.html { redirect_to @grandma, notice: 'Grandma was successfully updated.' }
        format.json { render :show, status: :ok, location: @grandma }
      else
        format.html { render :edit }
        format.json { render json: @grandma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grandmas/1
  # DELETE /grandmas/1.json
  def destroy
    @grandma.destroy
    respond_to do |format|
      format.html { redirect_to grandmas_url, notice: 'Grandma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grandma
      @grandma = Grandma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grandma_params
      params.require(:grandma).permit(:name, :username, :password, :img_url)
    end
end
