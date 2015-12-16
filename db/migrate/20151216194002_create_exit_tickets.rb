class CreateExitTickets < ActiveRecord::Migration
  def change
    create_table :exit_tickets do |t|
    	t.date :date
    	t.references :cohort
    	t.references :instructor
    	t.timestamps null: false
    end
  end
end
