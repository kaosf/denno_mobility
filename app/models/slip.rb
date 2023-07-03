class Slip < ApplicationRecord
  belongs_to :company
  belongs_to :user, class_name: "User", foreign_key: "rep_user_id", optional: true

  validates :name, presence: true
  validates :targeted_at, presence: true

  STATUS_UNASSIGNED = 1000
  STATUS_ASSIGNED = 2000
  STATUS_REJECT = 3000
  STATUS_ACCEPT = 4000
  STATUS_PICKUP = 5000
  STATUS_DELIVER = 6000
  STATUS_COMPLETE = 7000
end
