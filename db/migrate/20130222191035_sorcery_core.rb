class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :name
      t.boolean :is_customer
      t.boolean :is_admin
      t.boolean :is_manager
      t.integer :reward_points
      t.string :billing_address
      t.integer :creditcard_num
      t.string :creditcard_type
      t.integer :security_num

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
