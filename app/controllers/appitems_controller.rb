class AppitemsController < ApplicationController
  before_action :set_appitem, only: %i[ show edit update destroy ]

  # GET /appitems or /appitems.json
  def index
    @appitems = Appitem.all
  end

  # GET /appitems/1 or /appitems/1.json
  def show
  end

  # GET /appitems/new
  def new
    @appitem = Appitem.new
  end

  # GET /appitems/1/edit
  def edit
  end

  # POST /appitems or /appitems.json
  def create
    @appitem = Appitem.new(appitem_params)

    respond_to do |format|
      if @appitem.save
        format.html { redirect_to appitem_url(@appitem), notice: "Appitem was successfully created." }
        format.json { render :show, status: :created, location: @appitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appitems/1 or /appitems/1.json
  def update
    respond_to do |format|
      if @appitem.update(appitem_params)
        format.html { redirect_to appitem_url(@appitem), notice: "Appitem was successfully updated." }
        format.json { render :show, status: :ok, location: @appitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appitems/1 or /appitems/1.json
  def destroy
    @appitem.destroy!

    respond_to do |format|
      format.html { redirect_to appitems_url, notice: "Appitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appitem
      @appitem = Appitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appitem_params
      params.require(:appitem).permit(:name, :description, :color, :default_status, :link, :position)
    end
end
