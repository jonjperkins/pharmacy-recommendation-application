class RemoveNoneTodayFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :none_today, :integer
  end
end
