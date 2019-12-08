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

  def edit
    @episode = Episode.find_by(id: params[:id])
  end

  def update
    @episode = Episode.find_by(id: params[:id])
    if @episode.update_attributes(episode_params)
      redirect_to "/episodes/#{@episode.id}"
    else
      redirect_to :edit_episode
    end
  end
    
  
  def destroy
    @episode = Episode.find_by(id: params[:id])
    @episode.destroy
    redirect_to "/"
  end 
  
  private
  def episode_params
    params.require(:episode).permit(:title, :contents, :auther)
  end
end
