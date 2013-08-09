class AddPlateNumberToCar < ActiveRecord::Migration
  def change
  	add_column :cars, :plate_number, :string
  end
end
