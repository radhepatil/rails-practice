class Student < ApplicationRecord
  belongs_to :college
  has_many :connects
  has_many :courses, through: :connects
end
