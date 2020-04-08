class AddCounterCacheToStories < ActiveRecord::Migration
  def change
    add_column :stories, :votes_count, :integer, :default => 0
    Story.find(:all).each do |s|
    	s.update_attribute :votes_count, s.votes.length
    end
  end
end
