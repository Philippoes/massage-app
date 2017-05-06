class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
