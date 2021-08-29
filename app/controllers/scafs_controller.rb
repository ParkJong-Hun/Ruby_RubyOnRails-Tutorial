class ScafsController < ApplicationController
  before_action :set_scaf, only: %i[ show edit update destroy ]

  # GET /scafs or /scafs.json
  def index
    @scafs = Scaf.all
  end

  # GET /scafs/1 or /scafs/1.json
  def show
  end

  # GET /scafs/new
  def new
    @scaf = Scaf.new
  end

  # GET /scafs/1/edit
  def edit
  end

  # POST /scafs or /scafs.json
  def create
    @scaf = Scaf.new(scaf_params)

    respond_to do |format|
      if @scaf.save
        format.html { redirect_to @scaf, notice: "Scaf was successfully created." }
        format.json { render :show, status: :created, location: @scaf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scafs/1 or /scafs/1.json
  def update
    respond_to do |format|
      if @scaf.update(scaf_params)
        format.html { redirect_to @scaf, notice: "Scaf was successfully updated." }
        format.json { render :show, status: :ok, location: @scaf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scafs/1 or /scafs/1.json
  def destroy
    @scaf.destroy
    respond_to do |format|
      format.html { redirect_to scafs_url, notice: "Scaf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaf
      @scaf = Scaf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaf_params
      params.require(:scaf).permit(:title, :content)
    end
end
