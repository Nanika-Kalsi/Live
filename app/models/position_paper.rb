class PositionPaper < ActiveRecord::Base
  belongs_to :committee
  belongs_to :topic
  belongs_to :user

  has_attached_file :paper,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :paper, :content_type => [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]

  def s3_credentials
    {:bucket => "cimun", :access_key_id => ENV['S3_ACCESS_KEY_ID'], :secret_access_key => ENV['S3_SECRET_ACCESS_KEY']}
  end

  def create_title
    self.update!({title: "#{self.country} - #{self.committee_name}: #{self.topic_name}"})
  end

  def country
    self.user.country
  end

  def committee_name
    self.committee.name
  end

  def topic_name
    self.topic.name
  end
end
