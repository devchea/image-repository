class Image < ApplicationRecord
    has_one_attached :image

    # search description and title columns for params
end