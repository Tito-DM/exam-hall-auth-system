class RenameStudentCollun < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :fingerprint_data, :fingerstatus
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
