class DependsController < ApplicationController
  before_action :set_depend, only: [:show, :edit, :update, :destroy]

  # GET /depends
  # GET /depends.json
  def index
    @depends = Depend.all
  end

  # GET /depends/1
  # GET /depends/1.json
  def show
  end

  # GET /depends/new
  def new
    @depend = Depend.new
  end

  # GET /depends/1/edit
  def edit
  end

  # POST /depends
  # POST /depends.json
  def create
    @depend = Depend.new(depend_params)

    respond_to do |format|
      if @depend.save
        format.html { redirect_to @depend, notice: 'Depend was successfully created.' }
        format.json { render :show, status: :created, location: @depend }
      else
        format.html { render :new }
        format.json { render json: @depend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /depends/1
  # PATCH/PUT /depends/1.json
  def update
    respond_to do |format|
      if @depend.update(depend_params)
        format.html { redirect_to @depend, notice: 'Depend was successfully updated.' }
        format.json { render :show, status: :ok, location: @depend }
      else
        format.html { render :edit }
        format.json { render json: @depend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depends/1
  # DELETE /depends/1.json
  def destroy
    @depend.destroy
    respond_to do |format|
      format.html { redirect_to depends_url, notice: 'Depend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depend
      @depend = Depend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def depend_params
      params.require(:depend).permit(:name,:email, :gender, :cpf, :date_of_birth, :active, :customer_id)
    end
end
