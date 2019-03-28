class AddCollumn < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :course, :string
    add_column :students, :fingerprint_data, :string
    add_column :subjects, :exam_time, :datetime

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
