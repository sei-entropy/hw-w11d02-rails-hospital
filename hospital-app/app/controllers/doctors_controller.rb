class DoctorsController < ApplicationController

   
    def show
  
        @doctor= Doctor.find(params[:id])
        end


        def index
            @doctors= Doctor.all
                end

    def new
            @doctor = Doctor.new
                end

    def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save
    redirect_to doctor_path
    end


    def edit
        @doctor = Doctor.find(params[:id])
      end
    
      def update
        doctor = Doctor.find(params[:id])
        doctor.update(doctor_params)
          
        redirect_to doctor
      end


end