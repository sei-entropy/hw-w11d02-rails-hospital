class DoctorsController < ApplicationController
    before_action :authenticate_user!, only:[:new, :edit]
    before_action :find_doctor, except: [:index, :new, :create]

    def index
        @doctors = Doctor.all
    end

    def show
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
        if @doctor.save
            redirect_to @doctor
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        @doctor.update(doctor_params)
        redirect_to @doctor
    end

    def destroy
        @doctor.destroy
        redirect_to doctors_path
    end

    private
        def doctor_params
            params.require(:doctor).permit(:first_name, :last_name, :zip_code, :speciality, :patient_id)
        end

        def find_doctor
            @doctor = Doctor.find(params[:id])
        end
end
