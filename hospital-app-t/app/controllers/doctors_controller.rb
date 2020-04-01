class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all.order("created_at DESC")
    end
  
    def new
        @doctor = Doctor.new
    end
  
    def create
        @doctor = Doctor.new(doctor_params)
  
        if @doctor.save
            redirect_to @doctor
        else
            render 'new'
        end
    end
  
    def show
        @doctor = Doctor.find(params[:id])
        @patient = Patient.all.order("created_at DESC")
    end
  
    def update
        @doctor = Doctor.find(params[:id])
  
        if @doctor.update(doctor_params)
            redirect_to @doctor
        else
            render 'edit'
        end
    end
  
    def edit
        @doctor = Doctor.find(params[:id])
    end
  
    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
  
        redirect_to patient_path
  
    end
  
    private
  
    def doctor_params
        params.require(:doctor).permit( :first_name,:last_name,:zip_code,:specialty)
    end
  
  end
