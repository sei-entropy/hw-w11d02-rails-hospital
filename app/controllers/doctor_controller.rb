class DoctorController < ApplicationController
    def show 
        @doctor = Doctor.find(params[:id])
        end 
        def index
            @doctors= Doctor.all
        end 
        def new 
            @doctor = Doctor.new
        end 
        def create 
            @doctor = Doctor.new(doctor_params)
            @doctor .save
            redirect_to @doctor 
        end 
       
        def edit
            @doctor  = Doctor.find(params[:id])
          end

          def update
            @doctor  = Doctor.find(params[:id])
            if @doctor .update(doctor_params)
              redirect_to @doctor 
            else
              render 'edit'
            end
          end
          def destroy
            @doctor = Doctor.find(params[:id]).delete

            redirect_to root_path
          end
          private 
          def doctor_params
              params.require(:doctor).permit(:doctor_name, :family_name, :specialty, :zip_code)
          end
         
end

