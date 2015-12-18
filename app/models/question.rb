# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  exit_ticket_id :integer
#  question       :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :exit_ticket
  belongs_to :instructor
  has_many :responses
end
