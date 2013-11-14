class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :h1
      t.string :h2
      t.string :button
      t.string :img

      t.timestamps
    end
  end
end
