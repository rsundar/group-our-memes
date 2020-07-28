module ApplicationHelper
    def user_avatar(user, size=20)
        if user.avatar.attached?
            user.avatar.variant(resize: "#{size}x#{size}")
        else
            gravatar_image_url(user.email, size: size)
        end
    end

    def groups_icon(group, size=20)
        if group.icon.attached?
            group.icon.variant(resize: "#{size}x#{size}")
        else
            ActionController::Base.helpers.asset_path("cartoon-user-2.jpg")
        end
    end
end
