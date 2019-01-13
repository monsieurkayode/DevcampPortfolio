module ApplicationHelper
  def user_actions
    if current_user.is_a?(User)
      (link_to 'Logout', destroy_user_session_path, method: :delete) << ' | ' <<
        (link_to 'Update Account', edit_user_registration_path)
    elsif !devise_controller?
      (link_to 'Login', new_user_session_path) << ' | ' <<
        (link_to 'Register', new_user_registration_path)
    end
  end

  def tracker
    return unless session[:source]

    tag.p "Thanks for visiting me from #{session[:source]}"
  end

  def show_notification(notification, notification_type)
    return unless notification

    tag.p notification, class: notification_type
  end
end
