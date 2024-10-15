class VirementsController < ApplicationController
  before_action :set_virement, only: %i[ show edit update destroy ]

  # GET /virements or /virements.json
  def index
    @virements = Virement.all
  end

  # GET /virements/1 or /virements/1.json
  def show
  end

  # GET /virements/new
  def new
    @virement = Virement.new
  end

  # GET /virements/1/edit
  def edit
  end

  # POST /virements or /virements.json
  def create
    @virement = Virement.new(virement_params)

    respond_to do |format|
      if @virement.save
        CompteClient.where(id: params[:receveur_id]).update("solde = solde + ?", params[:montant])
        format.html { redirect_to virement_url(@virement), notice: "Virement was successfully created." }
        format.json { render :show, status: :created, location: @virement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @virement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /virements/1 or /virements/1.json
  def update
    respond_to do |format|
      if @virement.update(virement_params)
        format.html { redirect_to virement_url(@virement), notice: "Virement was successfully updated." }
        format.json { render :show, status: :ok, location: @virement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @virement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /virements/1 or /virements/1.json
  def destroy
    @virement.destroy

    respond_to do |format|
      format.html { redirect_to virements_url, notice: "Virement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virement
      @virement = Virement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def virement_params
      params.require(:virement).permit(:montant, :date_jour, :emeteur_id, :receveur_id)
    end
end
