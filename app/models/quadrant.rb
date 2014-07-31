class Quadrant < ActiveRecord::Base
  belongs_to :tree
  has_many :lichens
  accepts_nested_attributes_for :lichens, :reject_if => lambda { |a| a[:species].blank? }, :allow_destroy => true
  has_attached_file :image, :default_url => "/images/:style/missing.png"
end
