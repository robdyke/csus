json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :hospital_name, :hospital_post_code
  json.url hospital_url(hospital, format: :json)
end
