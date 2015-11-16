class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string 'name'
      t.string 'resolution'
      t.string 'fps'
      t.string 'filename'
      t.timestamps null: false
    end
  end
end
