class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON # As we used SQLite
    belongs_to :user, optional: true


    validates :title, :description, :cost, :image, presence: true
    validates :description, length: { maximum: 1000, too_long: "More than %{count} characters are not allowed. " }
    validates :title, length: {maximum:140, too_long: "More than %{count} characters are not allowed. " }
    validates :cost, numericality: { only_integer: true }, length: {maximum: 7}

    CONDITION = %w{ New Excellent Mint Used Fair Poor }
end
