class Committee < ActiveRecord::Base
  has_many :topics
  has_many :position_papers
end
