class Cohort < ActiveRecord::Base
  has_many :students
  has_many :exit_tickets
  has_one :producer
  has_and_belongs_to_many :instructors #creates join table
end