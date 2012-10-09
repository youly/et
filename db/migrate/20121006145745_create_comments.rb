class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :teacher_id
      t.integer :user_id
      t.text :content
      t.integer :s, default:0
      t.integer :o ,default:0

      t.timestamps
    end
  end
end
