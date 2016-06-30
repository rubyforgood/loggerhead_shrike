class WelcomeController < ApplicationController
  def index
    render layout: 'guest_layout'
  end
end
