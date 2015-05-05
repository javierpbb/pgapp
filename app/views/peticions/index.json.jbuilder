json.array!(@peticions) do |peticion|
  json.extract! peticion, :id, :tipo, :fechadesde, :fechahasta, :status, :email
  json.url peticion_url(peticion, format: :json)
end
