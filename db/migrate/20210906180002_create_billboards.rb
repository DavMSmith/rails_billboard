class CreateBillboards < ActiveRecord::Migration[6.1]
  def change
    create_table :billboards do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.integer :number_of_songs

      t.timestamps
    end
  end
end
