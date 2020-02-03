class Item < ApplicationRecord
    has_one :category

    def self.search(search)
        if search.present?
            Item.where(['name LIKE ?', "%#{search}%"])
        else
            Item.all
        end
    end
end
