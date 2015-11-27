class DoctersController < ApplicationController
  before_action :set_docter, only: [:show, :edit, :update, :destroy]

  # GET /docters
  # GET /docters.json
  def index
    @docters = Docter.all
  end

  # GET /docters/1
  # GET /docters/1.json
  def show
  end

  # GET /docters/new
  def new
    @docter = Docter.new
  end

  # GET /docters/1/edit
  def edit
  end

  # POST /docters
  # POST /docters.json
  def create
    @docter = Docter.new(docter_params)

    respond_to do |format|
      if @docter.save
        format.html { redirect_to @docter, notice: 'Docter was successfully created.' }
        format.json { render :show, status: :created, location: @docter }
      else
        format.html { render :new }
        format.json { render json: @docter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /docters/1
  # PATCH/PUT /docters/1.json
  def update
    respond_to do |format|
      if @docter.update(docter_params)
        format.html { redirect_to @docter, notice: 'Docter was successfully updated.' }
        format.json { render :show, status: :ok, location: @docter }
      else
        format.html { render :edit }
        format.json { render json: @docter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /docters/1
  # DELETE /docters/1.json
  def destroy
    @docter.destroy
    respond_to do |format|
      format.html { redirect_to docters_url, notice: 'Docter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docter
      @docter = Docter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docter_params
      params.require(:docter).permit(:name, :address)
    end
end
