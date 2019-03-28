class RenameValueVenueSubjectTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :subjects, :exam_value, :exam_venue
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
