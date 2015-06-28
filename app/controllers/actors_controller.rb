class ActorsController < ApplicationController
  

  	def index
		@actors = Actor.all
	end
	
	def show
    @actor = Actor.find(params[:id])
    @movies = @actor.movies
  end

  def new
    @actor = Actor.new
    respond_with(@actor)
  end

  def edit
  end

  def create
    @actor = Actor.new(actor_params)
    @actor.save
    respond_with(@actor)
  end

  def update
    @actor.update(actor_params)
    respond_with(@actor)
  end

  def destroy
    @actor.destroy
    respond_with(@actor)
  end

  private
    def set_actor
      @actor = Actor.find(params[:id])
    end

    def actor_params
      params[:actor]
    end
end
