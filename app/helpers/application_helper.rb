module ApplicationHelper
  def user_avatar(user, size = 20)
      if user.avatar.attached? # rubocop:todo Layout/IndentationWidth
          user.avatar.variant(resize: "#{size}x#{size}") # rubocop:todo Layout/IndentationWidth
      else
          gravatar_image_url(user.email, size: size) # rubocop:todo Layout/IndentationWidth
      end
  end

  def groups_icon(group, size = 20)
      if group.icon.attached? # rubocop:todo Layout/IndentationWidth
          group.icon.variant(resize: "#{size}x#{size}") # rubocop:todo Layout/IndentationWidth
      else
          ActionController::Base.helpers.asset_path('cartoon-user-2.jpg') # rubocop:todo Layout/IndentationWidth
      end
  end

  def notification?(notification)
    return if notification.nil?

    if notification == notice
      render 'shared/notice'
    else
      render 'shared/alert'
    end
  end

  def nav_links(user_authenticated)
    if user_authenticated
      render 'shared/signed_in_user_links'
    end
  end
end
