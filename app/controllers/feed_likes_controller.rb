class FeedLikesController < ApplicationController
  # GET /feed_likes
  # GET /feed_likes.json
  def index
    @feed_likes = FeedLike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feed_likes }
    end
  end

  # GET /feed_likes/1
  # GET /feed_likes/1.json
  def show
    @feed_like = FeedLike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed_like }
    end
  end

  # GET /feed_likes/new
  # GET /feed_likes/new.json
  def new
    @feed_like = FeedLike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feed_like }
    end
  end

  # GET /feed_likes/1/edit
  def edit
    @feed_like = FeedLike.find(params[:id])
  end

  # POST /feed_likes
  # POST /feed_likes.json
  def create
    @feed_like = FeedLike.new(params[:feed_like])

    respond_to do |format|
      if @feed_like.save
        format.html { redirect_to @feed_like, notice: 'Feed like was successfully created.' }
        format.json { render json: @feed_like, status: :created, location: @feed_like }
      else
        format.html { render action: "new" }
        format.json { render json: @feed_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feed_likes/1
  # PUT /feed_likes/1.json
  def update
    @feed_like = FeedLike.find(params[:id])

    respond_to do |format|
      if @feed_like.update_attributes(params[:feed_like])
        format.html { redirect_to @feed_like, notice: 'Feed like was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_likes/1
  # DELETE /feed_likes/1.json
  def destroy
    @feed_like = FeedLike.find(params[:id])
    @feed_like.destroy

    respond_to do |format|
      format.html { redirect_to feed_likes_url }
      format.json { head :no_content }
    end
  end
end
