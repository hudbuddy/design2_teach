class YoutubeChannelsController < ApplicationController
  before_action :set_youtube_channel, only: [:show, :edit, :update, :destroy]

  # GET /youtube_channels
  # GET /youtube_channels.json
  def index
    @youtube_channels = YoutubeChannel.all
  end

  # GET /youtube_channels/1
  # GET /youtube_channels/1.json
  def show
  end

  # GET /youtube_channels/new
  def new
    @youtube_channel = YoutubeChannel.new
  end

  # GET /youtube_channels/1/edit
  def edit
  end

  # POST /youtube_channels
  # POST /youtube_channels.json
  def create
    @youtube_channel = YoutubeChannel.new(youtube_channel_params)

    respond_to do |format|
      if @youtube_channel.save
        format.html { redirect_to @youtube_channel, notice: 'Youtube channel was successfully created.' }
        format.json { render :show, status: :created, location: @youtube_channel }
      else
        format.html { render :new }
        format.json { render json: @youtube_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtube_channels/1
  # PATCH/PUT /youtube_channels/1.json
  def update
    respond_to do |format|
      if @youtube_channel.update(youtube_channel_params)
        format.html { redirect_to @youtube_channel, notice: 'Youtube channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @youtube_channel }
      else
        format.html { render :edit }
        format.json { render json: @youtube_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtube_channels/1
  # DELETE /youtube_channels/1.json
  def destroy
    @youtube_channel.destroy
    respond_to do |format|
      format.html { redirect_to youtube_channels_url, notice: 'Youtube channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_channel
      @youtube_channel = YoutubeChannel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def youtube_channel_params
      params.require(:youtube_channel).permit(:title, :url, :profile_id, :deleted_at)
    end
end
