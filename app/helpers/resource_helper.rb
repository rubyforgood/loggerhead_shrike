module ResourceHelper
  def resource_name
    :user
  end

  def resource
    if current_user
      @resource = current_user
    else
      @resource ||= User.new
    end
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def resource_class
    devise_mapping.to
  end
end
