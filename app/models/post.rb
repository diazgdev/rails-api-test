class Post < ApplicationRecord
  has_one_attached :featured_image

  def featured_image_url
    if featured_image.attached?
      Rails.application.routes.url_helpers.rails_blob_url(featured_image, only_path: true)
    else
      nil
    end
  end
end
