module PostsHelper
  def has_all_permissions?
    user_signed_in? && current_user.id == @post.user_id
  end
end
