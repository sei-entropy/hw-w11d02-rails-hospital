class AppointmentsController < ApplicationController

    def index
        @appointments = @doctor.appointments.order(:date, :time)
    end
    
      private
        def set_doctors
          @doctor = Doctor.find(params[:doctor_id])
        end
    
        def set_appointment
          @appointment = Appointment.find(params[:id])
        end
    
        def set_patients
          @patients = (Patient.all.order("last_name") - @doctor.patients)
        end
    
        def appointment_params
          params.require(:appointment).permit(:patient_id, :date, :time)
        end
    end
end
