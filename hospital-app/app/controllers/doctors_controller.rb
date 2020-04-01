class DoctorsController < ApplicationController
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
        @doctor = Doctor.new(patient_params)
    
        if @doctor.save
            redirect_to @doctor
          else
            render 'new'
          end
      end

      def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        doctor = Doctor.find(params[:id])
        doctor.update(params.require(:doctor).permit(:first_name, :last_name, :zip, :specialty))
          
        redirect_to doctor
    end

    def destroy
        doctor = Doctor.find(params[:id])
        doctor.destroy
      
        redirect_to doctor
      end
    
    private
      def doctor_params
        params.require(:doctor).permit(:first_name, :last_name, :zip, :specialty)
      end
end
