class CreateSoonevents < ActiveRecord::Migration
  def change
    create_table :soonevents do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
