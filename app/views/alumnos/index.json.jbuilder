json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :apellido, :dni
  json.url alumno_url(alumno, format: :json)
end
