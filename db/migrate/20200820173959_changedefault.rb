class Changedefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :photo, "https://cdn3.iconfinder.com/data/icons/business-round-flat-vol-1-1/36/user_account_profile_avatar_person_student_male-512.png"
  end
end
