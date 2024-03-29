class PositionPapersController < ApplicationController
  before_action :set_position_paper, only: [:download, :destroy]
  before_action :confirm_user_id_matches_current_user, only: :create


  # GET /position_papers
  # GET /position_papers.json
  def index
    if current_user.is_admin
      @position_papers = PositionPaper.all
    else
      @position_papers = PositionPaper.select { |p| p.topic.name != "Black Paper"}
    end
  end

  # GET /position_papers/new
  def new
    @position_paper = PositionPaper.new
    @committees = Committee.pluck(:name, :id)
    @topics = ["-- Select A Committee First --", nil]
  end

  # POST /position_papers
  # POST /position_papers.json
  def create
    @position_paper = PositionPaper.new(position_paper_params)

    respond_to do |format|
      if @position_paper.save
        @position_paper.create_title
        format.html { redirect_to position_papers_path, notice: 'Position Paper was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @position_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_papers/1
  # DELETE /position_papers/1.json
  def destroy
    @position_paper.destroy
    respond_to do |format|
      format.html { redirect_to position_papers_url, notice: 'Position Paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    if @position_paper.user == current_user || current_user.is_admin
      redirect_to @position_paper.paper.url
    else
      redirect_to position_papers_path
    end
  end

  private
    # Confirms that the given user_id param matches the current_user
    def confirm_user_id_matches_current_user
      unless position_paper_params[:user_id].to_i == current_user.id
        flash[:notice] = "The User ID has to match yours, nice try."
        redirect_to new_position_paper_path
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_position_paper
      @position_paper = PositionPaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_paper_params
      params.require(:position_paper).permit(:paper, :committee_id, :topic_id, :user_id)
    end
end
