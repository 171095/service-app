class AddLatitudeToServiceMen < ActiveRecord::Migration[5.0]
  def change
    add_column :service_men, :latitude, :float
    add_column :service_men, :longitude, :float
  end
end
