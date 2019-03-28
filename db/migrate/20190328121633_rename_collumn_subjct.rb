class RenameCollumnSubjct < ActiveRecord::Migration[5.2]
  def change
    rename_column :subjects, :exame_date, :exam_date
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
