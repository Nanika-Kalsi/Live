class CreatePositionPapers < ActiveRecord::Migration
  def change
    create_table :position_papers do |t|

      t.timestamps null: false
    end
  end
end
