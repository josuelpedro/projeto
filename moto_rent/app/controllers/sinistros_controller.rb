class SinistrosController < ApplicationController
  before_action :set_sinistro, only: [:show, :edit, :update, :destroy]

  # GET /sinistros
  # GET /sinistros.json
  def index
    @sinistros = Sinistro.all
  end

  # GET /sinistros/1
  # GET /sinistros/1.json
  def show
  end

  # GET /sinistros/new
  def new
    @sinistro = Sinistro.new
  end

  # GET /sinistros/1/edit
  def edit
  end

  # POST /sinistros
  # POST /sinistros.json
  def create
    @sinistro = Sinistro.new(sinistro_params)

    respond_to do |format|
      if @sinistro.save
        format.html { redirect_to @sinistro, notice: 'Sinistro was successfully created.' }
        format.json { render :show, status: :created, location: @sinistro }
      else
        format.html { render :new }
        format.json { render json: @sinistro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sinistros/1
  # PATCH/PUT /sinistros/1.json
  def update
    respond_to do |format|
      if @sinistro.update(sinistro_params)
        format.html { redirect_to @sinistro, notice: 'Sinistro was successfully updated.' }
        format.json { render :show, status: :ok, location: @sinistro }
      else
        format.html { render :edit }
        format.json { render json: @sinistro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sinistros/1
  # DELETE /sinistros/1.json
  def destroy
    @sinistro.destroy
    respond_to do |format|
      format.html { redirect_to sinistros_url, notice: 'Sinistro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sinistro
      @sinistro = Sinistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sinistro_params
      params.require(:sinistro).permit(:preco, :status, :tipo, :descrição, :alugue_id)
    end
end
