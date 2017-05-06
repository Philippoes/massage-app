class AddCityToRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :city, foreign_key: true
  end
end
