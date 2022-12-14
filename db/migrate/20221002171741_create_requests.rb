class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.integer :existence
      t.integer :decade
      t.integer :gender
      t.integer :job

      t.timestamps
    end
  end
end
