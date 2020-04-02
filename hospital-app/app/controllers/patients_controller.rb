class PatientsController < ApplicationController
  before_action :authenticate_user!, only:[:new, :edit, :destroy]
  before_action :find_patient, except: [:index, :new, :create]
  
  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @patient.update(patient_params)
    redirect_to @patient
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private 
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on, :doctor_id)
    end
    
    def find_patient
      @patient = Patient.find(params[:id])
    end
end
