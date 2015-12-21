# == Schema Information
#
# Table name: exit_tickets
#
#  id            :integer          not null, primary key
#  date          :date
#  cohort_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ExitTicket < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :cohort
  has_many :questions
  has_many :responses

  def pretty_time
    self.created_at.strftime('%b %d, %Y')
  end

  def self.ordered
    all.sort {|x,y| x.id <=> y.id}
  end

end

