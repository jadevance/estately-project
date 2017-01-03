class CorrectDumbTypo < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :listings, :country
  end
  def self.down
  add_column :listings, :county, :string
end
end
