class PTypesController < ApplicationController
  before_action :set_p_type, only: [:show, :edit, :update, :destroy]

  # GET /p_types
  # GET /p_types.json
  def index
    @p_types = PType.all
  end

  # GET /p_types/1
  # GET /p_types/1.json
  def show
  end

  # GET /p_types/new
  def new
    @p_type = PType.new
  end

  # GET /p_types/1/edit
  def edit
  end

  # POST /p_types
  # POST /p_types.json
  def create
    @p_type = PType.new(p_type_params)

    respond_to do |format|
      if @p_type.save
        format.html { redirect_to @p_type, notice: 'P type was successfully created.' }
        format.json { render :show, status: :created, location: @p_type }
      else
        format.html { render :new }
        format.json { render json: @p_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_types/1
  # PATCH/PUT /p_types/1.json
  def update
    respond_to do |format|
      if @p_type.update(p_type_params)
        format.html { redirect_to @p_type, notice: 'P type was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_type }
      else
        format.html { render :edit }
        format.json { render json: @p_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_types/1
  # DELETE /p_types/1.json
  def destroy
    @p_type.destroy
    respond_to do |format|
      format.html { redirect_to p_types_url, notice: 'P type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_type
      @p_type = PType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_type_params
      params.require(:p_type).permit(:pub_type)
    end
end
