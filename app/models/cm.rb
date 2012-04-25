class Cm < ActiveRecord::Base
  validates :title, :permalink, :body, :created_at,:updated_at, :presence => true
  validates :title, :uniqueness => true
  
end
