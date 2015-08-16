class CreateComplaints < ActiveRecord::Migration
  def up
    create_table :complaints do |t|
      t.string :name, :limit => 50, :null => true
      t.string :gender, :null => true
      t.integer :age, :null => true
      t.string incident_location, :limit => 50, :null => false
      t.string :phone, :null => true
      t.string :email, :default => "", :null => true
      t.string :duty_bearer, :limit => 50, :null => false 
      t.text :feedback, :limit => 400, :null => false
      t.timestamps null: false
    end
  end  
  
  def down
     drop_table :complaints
  end

end
