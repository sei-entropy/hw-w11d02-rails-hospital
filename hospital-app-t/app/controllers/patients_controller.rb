class PatientsController < ApplicationController
    def index
        @patients = Patient.all.order("created_at DESC")
    end
  
    def new
        @doctor = Doctor.find(params[:doctors_id])
        @patient = Patient.new
    end
  
    def create
        puts params
        # doctor = Doctor.find(params[:doctors_id])
        @patient = Patient.new(patient_params)

        if @patient.save
            redirect_to @doctor
        else
            render 'new'
        end
               

    end
  
    def show
        @patient = Patient.find(params[:id])
    end
  
    def update
        @patient = Patient.find(params[:id])
  
        if @patient.update(patient_params)
            redirect_to @patient
        else
            render 'edit'
        end
    end
  
    def edit
        @patient = Patient.find(params[:id])
    end
  
    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
  
        redirect_to patient_path
  
    end
  
    private
  
    def patient_params
        params.require(:patient).permit( :first_name,:last_name,:diagnosis,:born_on,:doctors_id)
    end
  
  end
