# == Schema Information
#
# Table name: instructors
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Instructor < ActiveRecord::Base
  has_secure_password
  has_many :cohorts 
  has_many :exit_tickets
end
