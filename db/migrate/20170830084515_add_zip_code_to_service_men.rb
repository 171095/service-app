class AddZipCodeToServiceMen < ActiveRecord::Migration[5.0]
  def change
    add_column :service_men, :zipcode, :string
  end
end
