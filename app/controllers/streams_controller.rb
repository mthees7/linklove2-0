class StreamsController < ApplicationController
  def index
  end

  def index_by_tag
    @stream = Stream.find params[:id]
    @stream.posts = Post.tagged_with([params[:tag]]).where(:stream_id => params[:id])
    render :show
  end

  def show
    @stream = Stream.find params[:id]
  end

  def new
    @stream = Stream.new
  end

  def create
    @stream = current_user.streams.new(params[:stream].except(:invited_user, :message))

    invited_user = User.find_by_email(params[:stream][:invited_user])
    if invited_user.nil?
      @pass = rand(1000000)
      invited_user = User.create(:email => params[:stream][:invited_user], :password => @pass, :password_confirmation => @pass)
      UserMailer.invitation_email(invited_user.email, @pass, params[:stream][:message], current_user, @stream).deliver
    else
      UserMailer.user_invitation_email(invited_user.email, params[:stream][:message], current_user, @stream).deliver
    end
    @stream.users << invited_user
    @stream.users << current_user
    if @stream.save
      redirect_to stream_path(@stream)
    else
      render :new
    end
  end

  def edit
    @stream = Stream.find params[:id]
    render 'streams/edit'
  end

  def destroy
    @stream = Stream.find params[:id]
    @stream.destroy
    redirect_to streams_path
  end

  def update
    @stream = Stream.find params[:id]
    @stream.update_attributes(params[:stream].except(:invited_user, :message))
    redirect_to stream_path(@stream)
  end
end