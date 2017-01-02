class AddSchemaToListingTable < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address, :string
    add_column :listings, :zip_code, :string
    add_column :listings, :listing_price, :decimal
    add_column :listings, :living_area, :integer
    add_column :listings, :rooms, :float
    add_column :listings, :year_built, :string
    add_column :listings, :country, :string
    add_column :listings, :city, :string
    add_column :listings, :state, :string
  end
end


# Address
# Zip code
# Listing price
# Living Area
# Rooms
# Year Built
# County
# City
# State