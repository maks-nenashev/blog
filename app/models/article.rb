class Article < ApplicationRecord
    validates :title, presence: true #walidacija
    validates :text, presence: true
end
