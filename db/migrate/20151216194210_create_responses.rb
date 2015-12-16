class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.references :question
    	t.references :student
    	t.text :response
    	t.timestamps null: false
    end
  end
end
