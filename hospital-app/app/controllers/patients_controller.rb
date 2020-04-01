class PatientsController < ApplicationController
        def show
            @patient = Patient.find(params[:id])
        end

        def index
            @patient = Patient.all
        end

        def new
            @patient = Patient.new
            @doctor = Doctor.new
        end
    
        def create
            
            @patient = Patient.create(params.require(:patient).permit(:first_name , :last_name , :diagnosis , :born_on))
            @doctor = Doctor.create(params.require(:doctors).permit(:name ,:doctor_id))

            if @patient.save && @doctor.save
            redirect_to patients_path
            else
                render 'new'
            end
        end
        def edit
            @patient = Patient.find(params[:id])
        end
        
        def update
            patient = Patient.find(params[:id])
            patient.update(params.require(:patient).permit(:first_name , :last_name , :diagnosis , :born_on) )
              
            redirect_to patient
          end

        def destroy

            Patient.find(params[:id]).destroy
            redirect_to patients_path 

        end

        private 
        def patient_params
            params.require(:patient).permit(:first_name , :last_name , :diagnosis , :born_on)
        end
   
    
end
