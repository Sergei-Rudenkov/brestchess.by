class CreateLitras < ActiveRecord::Migration
  def change
    create_table :litras do |t|
      t.string :title
      t.string :shortdescript
      t.text :main

      t.timestamps
    end
  end
end
