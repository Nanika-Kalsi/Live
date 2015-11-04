class CreatePositionPapers < ActiveRecord::Migration
  def change
    create_table :position_papers do |t|
      t.string :title
      t.belongs_to :user
      t.belongs_to :committee
      t.belongs_to :topic

      t.timestamps null: false
    end
  end
end
