# == Schema Information
#
# Table name: cohorts
#
#  id            :integer          not null, primary key
#  instructor_id :integer
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Cohort < ActiveRecord::Base
  has_many :students
  has_many :exit_tickets
  has_one :producer
  belongs_to :instructor
end
