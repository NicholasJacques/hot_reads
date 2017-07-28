class CreateReads < ActiveRecord::Migration[5.1]
  def change
    create_table :reads do |t|
      t.string :user_id
      t.belongs_to :link, index: true

      t.timestamps
    end
  end
end
