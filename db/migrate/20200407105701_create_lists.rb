class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
	  t.syring :title
	  t.string :body
      t.timestamps
    end
  end
end
