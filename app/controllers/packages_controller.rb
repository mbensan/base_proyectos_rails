class PackagesController < ApplicationController
  before_action :set_package, only: %i[ show edit update destroy ]
  before_action :only_admin, only: %i[ new edit create update destroy ]
  
  # GET /packages or /packages.json
  def index
    @packages = Package.all
  end

  # GET /packages/1 or /packages/1.json
  def show
  end

  # GET /packages/new
  def new
    @destinations = Destination.all
    puts (@destinations)
  end

  # GET /packages/1/edit
  def edit
  end

  # POST /packages or /packages.json
  def create
    @package = Package.new(package_params)
    destination_id = params[:destination_id]
    destination = Destination.find(destination_id)
    @package.destination = destination
    @package.save
    # add activities
    @package.add_activity(params[:act1])
    @package.add_activity(params[:act2])
    @package.add_activity(params[:act3])

    respond_to do |format|
      if @package.save
        format.html { redirect_to @package, notice: "Package was successfully created." }
        format.json { render :show, status: :created, location: @package }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packages/1 or /packages/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to @package, notice: "Package was successfully updated." }
        format.json { render :show, status: :ok, location: @package }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packages/1 or /packages/1.json
  def destroy
    @package.destroy!

    respond_to do |format|
      format.html { redirect_to packages_path, status: :see_other, notice: "Package was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def package_params
      params.require(:package).permit(:name, :price, :duration, :start_date, :end_date)
    end
end
