class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :quiz, :default => false
      t.boolean :admin, :default => false
      t.string :name
      t.string :authentication_token, :unique => true
    end
  end
end
