class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]
  def new
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      render action: 'confirm'
    else
      render action: 'new'
    end
  end

  def thanks
    @inquiry = Inquiry.create(inquiry_params)
  end

  def show
  end

  private

  def set_inquiry
    @inquiry = Inquiry.find(params[:id])
  end

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end
end
