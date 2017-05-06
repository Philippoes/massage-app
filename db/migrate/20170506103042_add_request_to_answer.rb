class AddRequestToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :answers, :request, foreign_key: true
  end
end
