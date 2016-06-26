json.array!(@system_suppliers) do |system_supplier|
  json.extract! system_supplier, :id, :supplier_name, :supplier_primary_phone, :supplier_email, :supplier_website_url
  json.url system_supplier_url(system_supplier, format: :json)
end
