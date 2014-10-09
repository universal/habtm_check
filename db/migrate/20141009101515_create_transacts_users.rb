class CreateTransactsUsers < ActiveRecord::Migration
  def change
    create_table :transacts_users, id: false do |t|
      t.belongs_to :transact, index: true
      t.belongs_to :user, index: true
    end
  end
end
