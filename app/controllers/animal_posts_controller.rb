class AnimalPostsController < ApplicationController
  
  def index
  	@animal_posts = AnimalPost.all #variables with an @ are instance variables
  end

  def show
  	#uses the params hash to get the key (id for news_post)
  	@animal_post = AnimalPost.find(params[:id])

  end

  def new
    @animal_post = AnimalPost.new #dummy object to build the form
  end

  def create
    @animal_post = AnimalPost.new(animal_post_params)
    if @animal_post.save #saves to the database
      redirect_to @animal_post
    else
      # DO SOMETHING ELSE
    end
  end

  def edit
    @animal_post = AnimalPost.find(params[:id])
  end

  def update
    @animal_post = AnimalPost.find(params[:id]) #fetch an existing record

    if @animal_post.update(animal_post_params)
      redirect_to @animal_post #redirect to show - breaks rails conventions
    else
      # DO SOMETHING ELSE 
    end

  end

  def destroy
    @animal_post = AnimalPost.find(params[:id])
    @animal_post.destroy
    redirect_to animal_posts_path #redirect to index (all the newsposts) after destroy
  end


  private

    def animal_post_params
      params.require(:animal_post).permit(:title,:body) #sanitizes the hash
    end


end
