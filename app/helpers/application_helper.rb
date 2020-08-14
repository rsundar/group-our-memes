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
end
