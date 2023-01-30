class Article < ApplicationRecord
    validates :title, presence: true #walidacija
    validates :text, presence: true

    has_many :comments  # Podkluchenie "Comments" Rukami delaem
                                                 # has_many :comments, dependent: :nullify
    has_many :comments, dependent: :delete_all   # Dla udalenija Comentarija wmeste s Article
end
