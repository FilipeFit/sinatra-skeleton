class AdjustmentsUsersTable < ActiveRecord::Migration

  def change
    remove_column :users, :username, :string
    change_table :users do |t|
      t.string :fist_name
      t.string :last_name
    end
  end

end