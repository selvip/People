class CreateMotorCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :motor_cycles do |t|
    	t.string 	:name
    	t.decimal :current_fuel
    	t.decimal :max_capacity_fuel
    	t.decimal :velocity
    	t.decimal :distance
    	t.decimal :time

      t.timestamps
    end
  end
end
