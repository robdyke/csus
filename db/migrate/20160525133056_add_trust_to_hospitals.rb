class AddTrustToHospitals < ActiveRecord::Migration
  def change
    add_reference :hospitals, :trust, index: true, foreign_key: true
  end
end
