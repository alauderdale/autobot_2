class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.string 			:make
    	t.string 			:car_model
    	t.string 			:color
      t.integer     :year
      t.integer     :number_of_doors
    	t.integer 		:user_id
      t.timestamps
    end
  end
end
