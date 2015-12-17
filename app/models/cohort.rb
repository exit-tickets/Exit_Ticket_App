class Cohort < ActiveRecord::Base
  has_many :students
  has_many :exit_tickets
  has_one :producer
  has_one :instructor
end