# == Schema Information
#
# Table name: producers
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  cohort_id       :integer
#

class Producer < ActiveRecord::Base
  has_secure_password
  belongs_to :cohort
end
