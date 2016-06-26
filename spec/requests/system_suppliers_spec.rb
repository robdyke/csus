require 'rails_helper'

RSpec.describe "SystemSuppliers", type: :request do
  describe "GET /system_suppliers" do
    it "works! (now write some real specs)" do
      get system_suppliers_path
      expect(response).to have_http_status(200)
    end
  end
end
