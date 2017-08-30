class CreateServiceMen < ActiveRecord::Migration[5.0]
  def change
    create_table :service_men do |t|
      t.string :fName
      t.string :lName
      t.integer :age
      t.string :contact1
      t.string :contact2
      t.text :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
