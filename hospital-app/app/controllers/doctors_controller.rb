class DoctorsController < ApplicationController
        def index
            @doctors = Doctor.all
        end
    
        def show
            @doctor = Doctor.find(params[:id])
            @patient =@doctor.patients
        end
    
        def new
            @doctor = Doctor.new
        end
    
        def create
            
            @doctor = Doctor.create(params.require(:doctor).permit(:name , :family_name , :zip_code , :specialty))
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
            doctor = Doctor.find(params[:id])
            doctor.update(params.require(:doctor).permit(:name , :family_name , :zip_code , :specialty) )
              
            redirect_to doctor
            
          end
          def destroy
            Doctor.find(params[:id]).destroy
          
            redirect_to doctors_path
        end
        private
        
        def person_params
          params.require(:doctors).permit(:name , :family_name , :zip_code , :specialty)
        end

    
end
