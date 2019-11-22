module ApplicationHelper
  def gravatar_image(user, options = {})
    if user.nil?
      return image_tag("https://kitt.lewagon.com/placeholder/users/cveneziani", options)
    end
    hash_url = Digest::MD5.hexdigest user.email
    image_tag "https://www.gravatar.com/avatar/#{hash_url}", options
  end
end
