class RemoveSomeFieldsThatArentRequired < ActiveRecord::Migration
  def change
    remove_column :trusts, :trust_name
    remove_column :trusts, :nhs_code
    remove_column :trusts, :trust_post_code
  end
end
