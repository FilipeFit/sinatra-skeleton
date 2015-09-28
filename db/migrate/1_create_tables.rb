class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :director
      t.string :description
      t.string :image_url
      t.timestamps
    end

    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.timestamps
    end

  end

end