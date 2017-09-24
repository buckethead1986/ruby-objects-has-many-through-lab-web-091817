class Doctor
  attr_accessor :name

  def initialize(name) #inititalize with name and empty appointment array
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self #tell the appointment which doctor it belongs to
    self.appointments << appointment #add appointment to appointments array
  end

  def appointments #return appointments array
    @appointments
  end

  def patients #iterate over the doctors appointmnets array and collect the patient for each appointment
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
