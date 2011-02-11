class Patient < ActiveRecord::Base
	def self.showAppointments(id)
	appointments= Appointment.find(:all,:conditions => {:patient => id})
	appointments.each do |t|
	puts "Cita No. #{t.id}, Doctor #{t.medic_id}, Hora Inicio #{t.begin_time.hour}:#{t.begin_time.min}, Hora Fin  #{t.end_time.hour}:#{t.end_time.min}" 
	end
	end
end


