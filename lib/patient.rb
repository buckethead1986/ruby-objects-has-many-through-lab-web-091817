class Patient
attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self #the appointment belongs to the patient(self)
  end

  def appointments
    @appointments
  end

  def doctors #iterates over all appointments for this patient instance and collects the doctors associated with eqch appointment
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
