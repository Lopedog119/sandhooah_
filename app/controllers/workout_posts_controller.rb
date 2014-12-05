class WorkoutPostsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_workout_post, only: [:show, :edit, :update, :destroy]

  # GET /workout_posts
  # GET /workout_posts.json
  def index
    @workout_posts = WorkoutPost.all
  end

  # GET /workout_posts/1
  # GET /workout_posts/1.json
  def show
  end

  # GET /workout_posts/new
  def new
    @workout_post = WorkoutPost.new
  end

  # GET /workout_posts/1/edit
  def edit
  end

  # POST /workout_posts
  # POST /workout_posts.json
  def create
    @workout_post = WorkoutPost.new(workout_post_params)
    @workout_post.user = current_user

    respond_to do |format|
      if @workout_post.save
        format.html { redirect_to @workout_post, notice: 'Workout post was successfully created.' }
        format.json { render :show, status: :created, location: @workout_post }
      else
        format.html { render :new }
        format.json { render json: @workout_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_posts/1
  # PATCH/PUT /workout_posts/1.json
  def update
    respond_to do |format|
      if @workout_post.update(workout_post_params)
        format.html { redirect_to @workout_post, notice: 'Workout post was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_post }
      else
        format.html { render :edit }
        format.json { render json: @workout_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_posts/1
  # DELETE /workout_posts/1.json
  def destroy
    @workout_post.destroy
    respond_to do |format|
      format.html { redirect_to workout_posts_url, notice: 'Workout post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_post
      @workout_post = WorkoutPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_post_params
      params.require(:workout_post).permit(:title, :description, :user_id)
    end
end
