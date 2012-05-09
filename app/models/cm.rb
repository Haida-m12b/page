class Cm < ActiveRecord::Base
  default_scope :order => 'title desc'
  validates :title, :permalink, :body, :created_at,:updated_at, :presence => true
  validates :title, :uniqueness => true
  
end
