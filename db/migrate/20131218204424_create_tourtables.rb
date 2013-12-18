class CreateTourtables < ActiveRecord::Migration
  def change
    create_table :tourtables do |t|
      t.string :name
      t.string :waitresult
      t.string :result
      t.string :tournament
      t.string :city

      t.timestamps
    end
  end
end
