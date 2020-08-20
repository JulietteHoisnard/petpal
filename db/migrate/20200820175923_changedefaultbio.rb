class Changedefaultbio < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :bio, "Your bio goes here. :) Say something cool about yourself!"
  end
end
