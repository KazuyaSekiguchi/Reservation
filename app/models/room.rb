class Room < ApplicationRecord
  def self.search(keyword)
    if keyword != ""
      Room.where('address LIKE(?)', "%#{keyword}%")
    else
      Room.all
    end
  end
end
