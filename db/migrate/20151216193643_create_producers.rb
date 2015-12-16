class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.timestamps null: false
    end
  end
end
