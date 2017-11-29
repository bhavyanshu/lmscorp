class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name, :null => false
      t.references :company, :null => false
      t.boolean :active, :default => false

      t.timestamps
    end
  end
end
