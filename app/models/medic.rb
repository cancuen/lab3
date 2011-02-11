class Medic < ActiveRecord::Base
	def self.showAppointments(id)
	appointments = Appointment.find(:all,:conditions => {:doctor => id})
	appointments.each do |t|
	puts "Cita No. #{t.id}, Paciente #{t.patient_id}, Departamento #{t.department}, Hora Inicio #{t.begin_time.hour}:#{t.begin_timet.min}, Hora Fin  #{t.end_time.hour}:#{t.end_time.min}" 
	end
	end
end

