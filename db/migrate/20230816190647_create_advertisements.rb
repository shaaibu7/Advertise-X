class CreateAdvertisements < ActiveRecord::Migration[7.0]
  def change
    create_table :advertisements do |t|
      t.string :name
      t.string :duration
      t.string :package

      t.timestamps
    end
  end
end
