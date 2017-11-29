class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :plan_level
      t.timestamps
    end
  end
end
