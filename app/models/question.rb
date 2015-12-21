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

  def self.ordered
    all.sort {|x,y| x.id <=> y.id}
  end

end
