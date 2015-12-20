class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.references :cohort
    	t.timestamps null: false
    end
  end
end
