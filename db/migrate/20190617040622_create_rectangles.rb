class CreateRectangles < ActiveRecord::Migration[5.2]
  def change
    create_table :rectangles do |t|
      t.integer :width
      t.integer :height
      t.string :color

      t.timestamps
    end
  end
end
