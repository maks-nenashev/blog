class Article < ApplicationRecord
    validates :title, presence: true #walidacija
    validates :text, presence: true

    has_many :comments  # Podkluchenie "Comments" Rukami delaem


end
