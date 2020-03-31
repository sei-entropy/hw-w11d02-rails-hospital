class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
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
        @patient = Patient.find(params[:id])
    end 

    def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    redirect_to @patient

    end

    def destroy
     Patient.find(params[:id]).destroy
    redirect_to  patients_path	
    end



    private
      def patient_params
        params.require(:patient).permit(:first_name, :last_name,:born_on,:diagnosis)
      end


end
