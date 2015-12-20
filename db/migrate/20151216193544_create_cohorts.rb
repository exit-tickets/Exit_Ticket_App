class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
    	t.references :instructor
    	t.string :name
    	t.timestamps null: false
    end
  end
end
