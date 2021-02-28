class Patient
  attr_accessor :name 
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    Appointment.new
    #associte with doctor
    #give .patient attribute of self
  end
  
  def appointments
    Appointment.all.select {|a| a.patient == self.name}
  end
  
  def doctors
    self.appointments.collect {|a| a.doctor}
  end

end