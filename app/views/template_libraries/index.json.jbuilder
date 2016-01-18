json.array!(@template_libraries) do |template_library|
  json.extract! template_library, :id
  json.url template_library_url(template_library, format: :json)
end
