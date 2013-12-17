class StreamsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @stream = Stream.new
  end

  def create
    @stream = current_user.streams.new(params[:stream].except(:invited_user))

    invited_user = User.find_by_email(params[:stream][:invited_user])

    @stream.users << invited_user
    if @stream.save
      UserMailer.invitation_email(invited_user, params[:stream][:message], current_user, @stream).deliver
      # redirect
      redirect_to root_path
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

end