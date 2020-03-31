class DoctorController < ApplicationController
  def index
    @doctors = Doctor.all
end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
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
  Doctor.find(params[:id]).destroy
  redirect_to  doctor_path	
end
  
  private
  def doctor_params
    params.require(:doctor).permit(:name, :family_name, :specialty, :zip_code)
  end
  

end
