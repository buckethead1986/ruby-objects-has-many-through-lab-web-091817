class Appointment

  attr_accessor :patient, :doctor #each appointment has a petient, and belongs to a doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #upon instatiation, make an appointment through the Doctor class #add_appointment method, which in turn sets this appointment (passed as an argument) as belonging to the doctor
  end
end
