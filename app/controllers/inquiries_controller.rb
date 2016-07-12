class InquiriesController < ApplicationController
  def new
    @inquiries = Inquiry.new
    render action: 'new'
  end

  def confirm
  end

  def thanks
  end

  def show
  end
end
