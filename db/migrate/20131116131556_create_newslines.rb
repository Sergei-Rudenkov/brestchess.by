class CreateNewslines < ActiveRecord::Migration
  def change
    create_table :newslines do |t|
      t.string :title
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
