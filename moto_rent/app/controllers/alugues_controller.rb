class AluguesController < ApplicationController
  before_action :set_alugue, only: [:show, :edit, :update, :destroy]

  # GET /alugues
  # GET /alugues.json
  def index
    @alugues = Alugue.all
  end

  # GET /alugues/1
  # GET /alugues/1.json
  def show
  end

  # GET /alugues/new
  def new
    @alugue = Alugue.new
  end

  # GET /alugues/1/edit
  def edit
  end

  # POST /alugues
  # POST /alugues.json
  def create
    @alugue = Alugue.new(alugue_params)

    respond_to do |format|
      if @alugue.save
        format.html { redirect_to @alugue, notice: 'Alugue was successfully created.' }
        format.json { render :show, status: :created, location: @alugue }
      else
        format.html { render :new }
        format.json { render json: @alugue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alugues/1
  # PATCH/PUT /alugues/1.json
  def update
    respond_to do |format|
      if @alugue.update(alugue_params)
        format.html { redirect_to @alugue, notice: 'Alugue was successfully updated.' }
        format.json { render :show, status: :ok, location: @alugue }
      else
        format.html { render :edit }
        format.json { render json: @alugue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alugues/1
  # DELETE /alugues/1.json
  def destroy
    @alugue.destroy
    respond_to do |format|
      format.html { redirect_to alugues_url, notice: 'Alugue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alugue
      @alugue = Alugue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alugue_params
      params.require(:alugue).permit(:preco, :status, :data_retirada, :data_devolucao, :moto_id, :cliente_id)
    end
end
