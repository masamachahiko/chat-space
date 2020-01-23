class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :image
      t.references :group, foresin_key: true
      t.references :user, foresin_key:true
      t.timestamps
    end
  end
end
