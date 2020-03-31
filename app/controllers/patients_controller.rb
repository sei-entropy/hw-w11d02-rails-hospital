class PatientsController < ApplicationController
    def show 
        @patient = Patient.find(params[:id])
        end 
        def index
            @patients = Patient.all
        end 
        def new 
            @patient = Patient.new
        end 
        def create 
            @patient = Patient.new(patient_params)
            @patient.save
            redirect_to @patient
        end 
       
        def edit
            @Patient = Patient.find(params[:id])
          end

          def update
            patients = Patient.find(params[:id])
            patients.update(params.require(:patients).permit(:first_name, :last_name, :diagnosis, :born_on))
            redirect_to patients
          end
          private 
          def patient_params
              params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on)
          end
          def destroy
            Patient.find(params[:id]).destroy
          
            redirect_to patient_path
          end
end


