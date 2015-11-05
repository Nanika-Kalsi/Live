class TopicsController < ApplicationController
  def index
    topics = Topic.where(committee_id: params[:comm_id])

    if topics.empty?
      render :json => ["An Error Has Occurred, Try Again"]
    else
      topics = topics.pluck(:name, :id)
      render :json => topics
    end

  end
end
