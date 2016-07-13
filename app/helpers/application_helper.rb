module ApplicationHelper

	#formateo las fechas para el formato dd/mm/YY en /views/expedientes/show
	def format_fecha(f)
		f.to_date.strftime('%d/%m/%Y') if f
	end
end
