class CreateClients < ActiveRecord::Migration
  def change

  create_table :client do |t|
   t.text :name
   t.text :phone
   t.text :datastamp
   t.text :barber
   t.text :color
   
   t.timestamps
  end

  end
end
