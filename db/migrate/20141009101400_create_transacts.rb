class CreateTransacts < ActiveRecord::Migration
  def change
    create_table :transacts do |t|
      t.string :name

      t.timestamps
    end
  end
end
