class AddNoneTodayToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :none_today, :integer
    add_column :surveys, :accepted_none_today, :integer
  end
end
