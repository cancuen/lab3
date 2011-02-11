class Appointments < ActiveRecord::Base
	def self.assignAppointment(eldocid, idpac, hora_inicio, hora_fin)
	app=Appointment.new
	app.medic_id=eldocid
	app.patient_id=idpac
	app.begin_time=hora_inicio
	app.end_time=hora_fin
	app.save
	end
	def self.modifyAppointment(citaid, eldocid, hora_inicio, hora_fin)
	app= find(:first, :conditions => { :id => citaid})
	app.medic_id=eldocid
	app.begin_time=hora_inicio
	app.end_time=hora_fin
	app.save
	    end
	def self.deletAppointment(citaid)
	app= find(:first, :conditions => { :id => citaid})
	app.destroy()
	end

end

