class CreateStatsBasketballs < ActiveRecord::Migration
  def change
    create_table :stats_basketballs do |t|
      t.decimal :total_points
      t.decimal :two_pointers_made
      t.decimal :two_pointers_missed
      t.decimal :three_pointers_made
      t.string :three_pointers_missed
      t.decimal :field_goal_percentage
      t.decimal :free_throws_made
      t.decimal :free_throws_missed
      t.decimal :assists
      t.decimal :rebounds
      t.decimal :blocks
      t.decimal :steals
      t.decimal :fouls
      t.decimal :technical_fouls

      t.timestamps null: false
    end
  end
end
