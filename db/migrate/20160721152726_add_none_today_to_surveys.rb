class AddNoneTodayToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :none_today, :boolean
  end
end
