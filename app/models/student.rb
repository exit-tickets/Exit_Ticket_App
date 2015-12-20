# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  cohort_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Student <ActiveRecord::Base
  has_secure_password
  belongs_to :cohort
  has_many :responses
end
