class FeedDislikesController < ApplicationController
  # GET /feed_dislikes
  # GET /feed_dislikes.json
  def index
    @feed_dislikes = FeedDislike.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feed_dislikes }
    end
  end

  # GET /feed_dislikes/1
  # GET /feed_dislikes/1.json
  def show
    @feed_dislike = FeedDislike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feed_dislike }
    end
  end

  # GET /feed_dislikes/new
  # GET /feed_dislikes/new.json
  def new
    @feed_dislike = FeedDislike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feed_dislike }
    end
  end

  # GET /feed_dislikes/1/edit
  def edit
    @feed_dislike = FeedDislike.find(params[:id])
  end

  # POST /feed_dislikes
  # POST /feed_dislikes.json
  def create
    @feed_dislike = FeedDislike.new(params[:feed_dislike])

    respond_to do |format|
      if @feed_dislike.save
        format.html { redirect_to @feed_dislike, notice: 'Feed dislike was successfully created.' }
        format.json { render json: @feed_dislike, status: :created, location: @feed_dislike }
      else
        format.html { render action: "new" }
        format.json { render json: @feed_dislike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feed_dislikes/1
  # PUT /feed_dislikes/1.json
  def update
    @feed_dislike = FeedDislike.find(params[:id])

    respond_to do |format|
      if @feed_dislike.update_attributes(params[:feed_dislike])
        format.html { redirect_to @feed_dislike, notice: 'Feed dislike was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feed_dislike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_dislikes/1
  # DELETE /feed_dislikes/1.json
  def destroy
    @feed_dislike = FeedDislike.find(params[:id])
    @feed_dislike.destroy

    respond_to do |format|
      format.html { redirect_to feed_dislikes_url }
      format.json { head :no_content }
    end
  end
end
