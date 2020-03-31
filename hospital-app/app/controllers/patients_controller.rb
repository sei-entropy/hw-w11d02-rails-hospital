class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end



  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save

    redirect_to @patient
  end

  def edit
    @patient = Patient.find(params[:id])
    
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    redirect_to  patients_index_path
  end

  private
    def patient_params
      params.require(:patient).permit(:first_name,:last_name,:diagnosis,:born_on)
    end

end
