class Complaint < ActiveRecord::Base
  scope :newest_first, lambda { order("complaints.created_at DESC")}
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
   }
end
