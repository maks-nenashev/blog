class Contact < ApplicationRecord
    validates :email, presence: true, length: {minimum: 3} #walidacija
    validates :text, presence: true

end
