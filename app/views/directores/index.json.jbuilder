json.array!(@directores) do |director|
  json.extract! director, :id, :nombre, :apellido, :direccion, :telefono
  json.url director_url(director, format: :json)
end
