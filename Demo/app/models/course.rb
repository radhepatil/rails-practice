class Course < ApplicationRecord
  belongs_to :college
  has_many :connects
  has_many :students, through: :connects
end
