class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
end
def index
    @doctors = Doctor.all
end
def new
    @doctor = Doctor.new()
 
end

def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save
    redirect_to @doctor
end

def edit
    @doctor = Doctor.find(params[:id])
end
def update
@doctor = Doctor.find(params[:id])
@doctor.update(doctor_params)
redirect_to @doctor
end

def destroy
@doctor = Doctor.find(params[:id])
@doctor.destroy
redirect_to @doctor
end 

private
def doctor_params
 params.require(:doctor).permit( :name, :family_name, :zip_code,:specialty)
end
end
