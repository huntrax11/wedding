class WeddingsController < ApplicationController
  include ApplicationHelper

  def index
  end

  def album
  end

  def map
    request.variant = :mobile if browser.device.mobile?

    respond_to do |format|
      format.html do |html|
        html.mobile # renders app/views/projects/show.html+tablet.erb
        html
      end
    end
  end
end
