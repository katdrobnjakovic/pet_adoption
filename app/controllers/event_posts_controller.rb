class EventPostsController < ApplicationController
  
before_action :deny_access_for_non_admins, except: [:index, :show]

  def index
  	@event_posts = EventPost.all #variables with an @ are instance variables
  end

  def show
  	#uses the params hash to get the key (id for news_post)
  	@event_post = EventPost.find(params[:id])

  end

  def new
    @event_post = EventPost.new #dummy object to build the form
  end

  def create
    @event_post = EventPost.new(event_post_params)
    if @event_post.save #saves to the database
      redirect_to @event_post
    else
      # DO SOMETHING ELSE
    end
  end

  def edit
    @event_post = EventPost.find(params[:id])
  end

  def update
    @event_post = EventPost.find(params[:id]) #fetch an existing record

    if @event_post.update(event_post_params)
      redirect_to @event_post #redirect to show - breaks rails conventions
    else
      # DO SOMETHING ELSE 
    end

  end

  def destroy
    @event_post = EventPost.find(params[:id])
    @event_post.destroy
    redirect_to event_posts_path #redirect to index (all the newsposts) after destroy
  end


  private

    def event_post_params
      params.require(:event_post).permit(:title, :date, :location, :description) #sanitizes the hash
    end


end
