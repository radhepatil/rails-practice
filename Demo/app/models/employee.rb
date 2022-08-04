class Employee < ApplicationRecord
  has_many :team_members, class_name: "Employee", foreign_key: :teamleader_id

  belongs_to :teamleader, class_name: "Employee", foreign_key: :teamleader_id, optional: true

  belongs_to :company
end
