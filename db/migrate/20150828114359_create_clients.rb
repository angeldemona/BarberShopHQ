class CreateClients < ActiveRecord::Migration
  def change
  
  create_table :Clients do |t|
  	 t.text :name
  	 t.text :phone
  	 t.text :barber
  	 t.text :color
  	 t.text :datetime
  	 t.timestamps
end
  end
end
