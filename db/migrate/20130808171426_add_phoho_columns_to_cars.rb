class AddPhohoColumnsToCars < ActiveRecord::Migration
  def change
  	add_attachment :cars, :car_photo
  end
end
