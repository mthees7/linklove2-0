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
    if invited_user.nil?
      @pass = rand(1000000)
      invited_user = User.create(:email => params[:stream][:invited_user], :password => @pass, :password_confirmation => @pass)
    end
    @stream.users << invited_user
    @stream.users << current_user
    if @stream.save
      UserMailer.invitation_email(invited_user, params[:stream][:message], current_user, @stream).deliver
      # redirect
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

end