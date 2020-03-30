class PatientsController < ApplicationController
     def show
    @Patient = Patient.find(params[:id])
    end
    def index 
      @Patients = Patient.all  
    end
    def new
        @Patient = Patient.new
    end
    def create 
        @Patient = Patient.new(Patient_params)
        @Patient.save
        redirect_to @Patient
    end
    private 
    def Patient_params
        params.require(:Patient).permit(:first_name,:last_name,:diagnosis,:born_on)
    end
end
