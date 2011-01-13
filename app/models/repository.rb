class Repository < ActiveRecord::Base
  has_many :commits
  has_many :authors, :through => :author_repositories
  has_many :author_repositories
  validates_presence_of :name 
  validates_presence_of :type
  validates_presence_of :path
  validates_presence_of :log_file
end

