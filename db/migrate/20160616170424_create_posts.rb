class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.references :category

      t.string :title
      t.text :description
      t.string :contact_name
      t.string :contact_no
      t.string :contact_email

      t.timestamps null: false
    end

    add_index :posts, :title
  end
end
