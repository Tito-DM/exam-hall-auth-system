class RenameCollumnAndRemove < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :exam_date,:date
    rename_column :subjects, :exam_time, :exam_datetime
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
