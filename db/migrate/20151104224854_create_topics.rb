class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.belongs_to :committee

      t.timestamps null: false
    end
  end
end
