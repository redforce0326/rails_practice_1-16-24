class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.text :memo
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
