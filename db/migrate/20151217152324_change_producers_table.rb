class ChangeProducersTable < ActiveRecord::Migration
  def change
  	add_column :producers, :cohort_id, :integer
  end
end
