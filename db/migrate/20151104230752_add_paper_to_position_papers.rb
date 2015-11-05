class AddPaperToPositionPapers < ActiveRecord::Migration
  def change
    add_attachment :position_papers, :paper
  end
end
