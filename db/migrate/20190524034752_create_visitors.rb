class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :ip
      t.datetime :created_on
      t.timestamps
    end
  end
end
