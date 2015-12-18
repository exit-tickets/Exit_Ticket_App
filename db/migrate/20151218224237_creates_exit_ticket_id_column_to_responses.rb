class CreatesExitTicketIdColumnToResponses < ActiveRecord::Migration
  def change
    add_reference :responses, :exit_ticket, index: true
  end
end
