class DoctorsController < ApplicationController
    def index
        @doctor = Doctor.all  
    end
        
    def show
        @doctor = Doctor.find(params[:id])
        @patient = @doctor.patients
      end     
    
    def new 
        @doctor = Doctor.new
    end

    def create
        Doctor.create(doctor_params)
        redirect_to doctors_path
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        doctor = Doctor.find(params[:id])
        doctor.update(doctor_params)
	
        redirect_to doctor
    end

    def destroy
        @doctor = Patient.find(params[:id])
        @doctor.destroy
        redirect_to  doctors_path
    end
    
    private
    
    def doctor_params
      params.require(:doctor).permit(:name, :family_name, :zip_code, :specialty)
    end

end
