class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.date :post_date
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
