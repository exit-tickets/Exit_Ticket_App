class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.references :exit_ticket
    	t.text :question
    	t.timestamps null: false
    end
  end
end
