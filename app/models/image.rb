class Image < ApplicationRecord
    has_one_attached :image

    # search description and title columns for params
    def self.search(params)
        images = Image.where("description LIKE ? or title LIKE ?", "%#{params[:search]}%", 
            "%#{params[:search]}%") if params[:search].present?
            
        images
    end
end