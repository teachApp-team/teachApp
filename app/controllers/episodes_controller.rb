class EpisodesController < ApplicationController
  def index
    @all_episodes = Episode.all
  end

  def show
    @episode = Episode.find_by(id: params[:id])
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to "/"
    else
      redirect_to :new_episode
    end
    
  end
  
  private
  def episode_params
    params.require(:episode).permit(:title, :contents, :auther)
  end
end
