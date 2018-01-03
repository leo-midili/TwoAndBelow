module SitesHelper
  def is_active?(controller, action)
    if controller_name == controller && action_name == action || @about == action
      'active'
    else
      'in-active'
    end
  end

  def google_map_link
    "https://www.google.com/maps/place/11+East+Blvd,+Blackwood,+NJ+08012/@39.676825,
  \r\n  -75.105845,18z/data=!4m5!3m4!1s0x89c6d62ce4596ec9:0xa58a1a0fa4a00b44!8m2!3d39.676825!4d-75.105845?hl=en-US"
  end

  def google_map_image
    "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d767.6987584964297!2d-75.105845!3d39.676825000000015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c6d62ce4596ec9%3A0xa58a1a0fa4a00b44!2s11+East+Blvd%2C+Blackwood%2C+NJ+08012!5e0!3m2!1sen!2sus!4v1497633825048"
  end
end
