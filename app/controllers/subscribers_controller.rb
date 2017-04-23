class SubscribersController < ApplicationController
  def index
    redirect_to new_subscriber_path
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:success] = 'Your email has been successfully added!'
      redirect_to new_subscriber_path
    else
      render :new
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
