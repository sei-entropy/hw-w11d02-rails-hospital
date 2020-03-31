class PatientsController < ApplicationController
    def show
     #http://localhost:3000/patients/4 any id
        @patient = Patient.find(params[:id])
    end
    #http://localhost:3000/patients
    def index
        @patient = Patient.all
    end
    #http://localhost:3000/patients/new
    def new
        @patient = Patient.new
    end
    def create
        @patient = Patient.new(patient_paramse)
        @patient.save
        redirect_to @patient
       end 
       def destroy
        Patient.find(params[:id]).destroy
      end
      def edit
        @patient = Patient.find(params[:id])
      end
      def update
        patient = Patient.find(params[:id])
        patient.update(params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on))
        redirect_to patient
      end
       private 
       def patient_paramse
          params.require(:patient).permit(:first_name ,:last_name , :diagnosis , :born_on)
       end


end
