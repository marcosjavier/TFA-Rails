json.array!(@expedientes) do |expediente|
  json.extract! expediente, :id, :fecha
  json.url expediente_url(expediente, format: :json)
end
