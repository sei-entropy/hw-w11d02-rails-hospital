class DoctorsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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
        @doctor = Doctor.new(doctors_params)

        if @doctor.save
            redirect_to doctors_path
        else
            render 'new'
        end
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])

        if @doctor.update(doctors_params)
            redirect_to doctors_path
        else
            render 'edit'
        end
    end

    def destroy
        @doctor = Doctor.find(params[:id]).delete
    
        redirect_to doctors_path
      end



    private
        def doctors_params
            params.require(:doctor).permit(:name, :family_name, :zip_code, :specialty)
        end
end
