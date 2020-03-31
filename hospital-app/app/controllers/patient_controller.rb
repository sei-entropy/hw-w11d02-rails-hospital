class PatientController < ApplicationController
  def home
  end

  def index
    @patients = Patient.all
  end

   
end
