class Test < ApplicationRecord
  belongs_to :test_type
  has_many :scores
end
