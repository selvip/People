class CreateGarages < ActiveRecord::Migration[5.0]
  def change
    create_table :garages do |t|
    	t.integer :person_id
    	t.integer :motor_cycle_id

      t.timestamps
    end
  end
end

