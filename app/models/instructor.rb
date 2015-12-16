class Instructor < ActiveRecord::Base
  has_secure_password
  has_many :cohorts 
  has_many :exit_tickets
end