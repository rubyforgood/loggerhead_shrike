class Users::InvitationsController < Devise::InvitationsController
  def edit
    puts '************'
    super
  end
end
