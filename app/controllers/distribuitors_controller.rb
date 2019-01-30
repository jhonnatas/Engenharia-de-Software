class DistribuitorsController < ApplicationController
  
  before_action :set_distribuitor, only: [:show, :edit, :update, :destroy]

  # GET /distribuitors
  # GET /distribuitors.json
  def index
    @distribuitors = Distribuitor.all
  end

  # GET /distribuitors/1
  # GET /distribuitors/1.json
  def show
  end

  # GET /distribuitors/new
  def new
    @distribuitor = Distribuitor.new
  end

  # GET /distribuitors/1/edit
  def edit
  end

  # POST /distribuitors
  # POST /distribuitors.json
  def create
    @distribuitor = Distribuitor.new(distribuitor_params)

    respond_to do |format|
      if @distribuitor.save
        format.html { redirect_to @distribuitor, notice: 'Distribuitor was successfully created.' }
        format.json { render :show, status: :created, location: @distribuitor }
      else
        format.html { render :new }
        format.json { render json: @distribuitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribuitors/1
  # PATCH/PUT /distribuitors/1.json
  def update
    respond_to do |format|
      if @distribuitor.update(distribuitor_params)
        format.html { redirect_to @distribuitor, notice: 'Distribuitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribuitor }
      else
        format.html { render :edit }
        format.json { render json: @distribuitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribuitors/1
  # DELETE /distribuitors/1.json
  def destroy
    @distribuitor.destroy
    respond_to do |format|
      format.html { redirect_to distribuitors_url, notice: 'Distribuitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribuitor
      @distribuitor = Distribuitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribuitor_params
      params.require(:distribuitor).permit(:rsocial, :cnpj, :phone, :address, :neighborhood, :city, :state, :zipcode, :complement, :contact)
    end
end
