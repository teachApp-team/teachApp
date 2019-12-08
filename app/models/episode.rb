class Episode < ApplicationRecord
    validates :title, presence: true
    validates :contents, presence: true
    validates :auther, presence: true
end
