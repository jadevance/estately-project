class Listing < ApplicationRecord
  geocoded_by :address   
  after_validation :geocode , if: ->(listing){ listing.address.present? and listing.address_changed? }

  def self.create_listing(hash)
    listing = Listing.new 
    listing.address       = hash["address"]
    listing.zip_code      = hash["zip_code"]
    listing.listing_price = hash["listing_price"]
    listing.living_area   = hash["living_area"]
    listing.rooms         = hash["rooms"]
    listing.year_built    = hash["year_built"]
    listing.county        = hash["county"]
    listing.city          = hash["city"]
    listing.state         = hash["state"]
    listing.save
  end 

  def self.update_listing(params)
    # find what is different and update it
  end 

  def self.search(params)
    # create an array of results
    # figure out what the query type is
    # Listing.where(query: params)
    # return as an array
  end 

end