class AddReftoPlants < ActiveRecord::Migration[6.0]
  def change
    add_reference :flowers, :garden, null: false, foreign_key: true  
  end
end
