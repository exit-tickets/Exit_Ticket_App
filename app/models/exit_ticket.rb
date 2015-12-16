class ExitTicket < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :cohort
  has_many :questions
end