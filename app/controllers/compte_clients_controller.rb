class CompteClientsController < ApplicationController
  before_action :set_compte_client, only: %i[ show edit update destroy ]

  # GET /compte_clients or /compte_clients.json
  def index
    @compte_clients = CompteClient.all
  end

  # GET /compte_clients/1 or /compte_clients/1.json
  def show
  end

  # GET /compte_clients/new
  def new
    @compte_client = CompteClient.new
  end

  # GET /compte_clients/1/edit
  def edit
  end

  # POST /compte_clients or /compte_clients.json
  def create
    @compte_client = CompteClient.new(compte_client_params)

    respond_to do |format|
      if @compte_client.save
        format.html { redirect_to compte_client_url(@compte_client), notice: "Compte client was successfully created." }
        format.json { render :show, status: :created, location: @compte_client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compte_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compte_clients/1 or /compte_clients/1.json
  def update
    respond_to do |format|
      if @compte_client.update(compte_client_params)
        format.html { redirect_to compte_client_url(@compte_client), notice: "Compte client was successfully updated." }
        format.json { render :show, status: :ok, location: @compte_client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compte_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compte_clients/1 or /compte_clients/1.json
  def destroy
    @compte_client.destroy

    respond_to do |format|
      format.html { redirect_to compte_clients_url, notice: "Compte client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compte_client
      @compte_client = CompteClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compte_client_params
      params.require(:compte_client).permit(:client_id, :type_compte, :numero_compte, :code_compte, :solde)
    end
end
