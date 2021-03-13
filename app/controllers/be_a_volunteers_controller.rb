class BeAVolunteersController < ApplicationController
  before_action :set_be_a_volunteer, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index] 

  # GET /be_a_volunteers or /be_a_volunteers.json
  def index
    @be_a_volunteers = BeAVolunteer.all
  end

  # GET /be_a_volunteers/1 or /be_a_volunteers/1.json
  def show
  end

  # GET /be_a_volunteers/new
  def new
    @be_a_volunteer = BeAVolunteer.new
  end

  # GET /be_a_volunteers/1/edit
  def edit
  end

  # POST /be_a_volunteers or /be_a_volunteers.json
  def create
    @be_a_volunteer = BeAVolunteer.new(be_a_volunteer_params)

    respond_to do |format|
      if @be_a_volunteer.save
        format.html { redirect_to @be_a_volunteer, notice: "Be a volunteer was successfully created." }
        format.json { render :show, status: :created, location: @be_a_volunteer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @be_a_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /be_a_volunteers/1 or /be_a_volunteers/1.json
  def update
    respond_to do |format|
      if @be_a_volunteer.update(be_a_volunteer_params)
        format.html { redirect_to @be_a_volunteer, notice: "Be a volunteer was successfully updated." }
        format.json { render :show, status: :ok, location: @be_a_volunteer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @be_a_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /be_a_volunteers/1 or /be_a_volunteers/1.json
  def destroy
    @be_a_volunteer.destroy
    respond_to do |format|
      format.html { redirect_to be_a_volunteers_url, notice: "Be a volunteer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_be_a_volunteer
      @be_a_volunteer = BeAVolunteer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def be_a_volunteer_params
      params.require(:be_a_volunteer).permit(:Name, :Roll_Number, :Branch, :Contact_Number, :Recruitment_Year, :Status, :Projects, :Role, :Skill_Set, :Remarks)
    end
end
