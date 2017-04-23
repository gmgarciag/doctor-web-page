class AvailableDatesController < ApplicationController
  before_action :set_available_date, only: [:show, :edit, :update, :destroy]

  # GET /available_dates
  # GET /available_dates.json
  def index
    @available_dates = AvailableDate.all
  end

  # GET /available_dates/1
  # GET /available_dates/1.json
  def show
  end

  # GET /available_dates/new
  def new
    @available_date = AvailableDate.new
  end

  # GET /available_dates/1/edit
  def edit
  end

  # POST /available_dates
  # POST /available_dates.json
  def create
    @available_date = AvailableDate.new(available_date_params)

    respond_to do |format|
      if @available_date.save
        format.html { redirect_to @available_date, notice: 'Available date was successfully created.' }
        format.json { render :show, status: :created, location: @available_date }
      else
        format.html { render :new }
        format.json { render json: @available_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_dates/1
  # PATCH/PUT /available_dates/1.json
  def update
    respond_to do |format|
      if @available_date.update(available_date_params)
        format.html { redirect_to @available_date, notice: 'Available date was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_date }
      else
        format.html { render :edit }
        format.json { render json: @available_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_dates/1
  # DELETE /available_dates/1.json
  def destroy
    @available_date.destroy
    respond_to do |format|
      format.html { redirect_to available_dates_url, notice: 'Available date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_date
      @available_date = AvailableDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_date_params
      params.require(:available_date).permit(:day, :hour, :minute)
    end
end
