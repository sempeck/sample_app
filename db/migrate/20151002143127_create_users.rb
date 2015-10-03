class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end

  #tego nie było w oryginale
  # def self.down
  #     drop_table :users
  # end

end

# class CreateUsers < ActiveRecord::Migration
# def self.up
# create_table :users do |t|
# t.string :name
# t.string :email
# t.timestamps
# end
# end
# def self.down
# drop_table :users
# end
# end