json.array!(@peticions) do |peticion|
  json.extract! peticion, :id, :tipo, :fechadesde, :fechahasta, :status, :email, :prioridad
  json.url peticion_url(peticion, format: :json)
end
