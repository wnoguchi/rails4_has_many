class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :subject
      t.string :handle_name
      t.text :comment

      t.timestamps
    end
  end
end
