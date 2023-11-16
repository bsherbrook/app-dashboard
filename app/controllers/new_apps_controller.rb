class NewAppsController < ApplicationController
  before_action :set_new_app, only: %i[ show edit update destroy ]

  # GET /new_apps or /new_apps.json
  def index
    @new_apps = NewApp.all
  end

  # GET /new_apps/1 or /new_apps/1.json
  def show
  end

  # GET /new_apps/new
  def new
    @new_app = NewApp.new
  end

  # GET /new_apps/1/edit
  def edit
  end

  # POST /new_apps or /new_apps.json
  def create
    @new_app = NewApp.new(new_app_params)

    respond_to do |format|
      if @new_app.save
        format.html { redirect_to new_app_url(@new_app), notice: "New app was successfully created." }
        format.json { render :show, status: :created, location: @new_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_apps/1 or /new_apps/1.json
  def update
    respond_to do |format|
      if @new_app.update(new_app_params)
        format.html { redirect_to new_app_url(@new_app), notice: "New app was successfully updated." }
        format.json { render :show, status: :ok, location: @new_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_apps/1 or /new_apps/1.json
  def destroy
    @new_app.destroy!

    respond_to do |format|
      format.html { redirect_to new_apps_url, notice: "New app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_app
      @new_app = NewApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_app_params
      params.require(:new_app).permit(:name, :description, :color, :link, :position)
    end
end
