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
    def edit
    @patient = Patient.find(params[:id])
  end
  def update
  @patient = Patient.find(params[:id])
  @patient.update(patient_params)
	redirect_to @patient
end
    def create 
        @patient = Patient.new(patient_params)
        @patient.save
        redirect_to @patient
    end
 
    def destroy
  @patient = Patient.find(params[:id])
  @patient.destroy
  redirect_to @patient
end
    private 
    def patient_params
        params.require(:patient).permit(:first_name,:last_name,:diagnosis)
    end

end
