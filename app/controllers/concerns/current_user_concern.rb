module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
      name: 'guest user',
      first_name: 'guest',
      last_name: 'user',
      email: 'guest@mail.com'
    )
  end
end
