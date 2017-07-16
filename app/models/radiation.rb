# == Schema Information
#
# Table name: radiations
#
#  id          :integer          not null, primary key
#  city        :string
#  index       :integer
#  time        :time
#  date        :date
#  utcdatetime :string
#  city_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Radiation < ApplicationRecord
  belongs_to :city
  extend Scrapable

  def self.uv_index(city)
    @city = city
    @city_index = fetch_radiation_levels.search "//location[@id='#{@city}']//index"
    @uv_index = @city_index.text.to_f
  end

  def self.fetch_and_save_uv_indices
    City.all.map do |city|
    byebug
      city.index = self.uv_index(city.name)
      city.save!
    end
  end
end
