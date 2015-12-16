class Question < ActiveRecord::Base
  belongs_to :exit_ticket
  belongs_to :instructor
  has_many :responses
end