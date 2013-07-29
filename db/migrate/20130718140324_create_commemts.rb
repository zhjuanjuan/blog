class CreateCommemts < ActiveRecord::Migration
  def change
    create_table :commemts do |t|
      t.text :content
      t.integer :post_id

      t.timestamps
    end
  end
end
