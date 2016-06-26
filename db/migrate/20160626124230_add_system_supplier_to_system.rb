class AddSystemSupplierToSystem < ActiveRecord::Migration
  def change
    add_reference :systems, :system_supplier, index: true, foreign_key: true
  end
end
