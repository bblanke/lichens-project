class Tree < ActiveRecord::Base
  has_many :quadrants, :dependent => :destroy
  accepts_nested_attributes_for :quadrants
  belongs_to :user
  has_attached_file :ptree, :default_url => "/images/:style/missing.png"
  has_attached_file :pleaf, :default_url => "/images/:style/missing.png"
  has_attached_file :parea, :default_url => "/images/:style/missing.png"
end


