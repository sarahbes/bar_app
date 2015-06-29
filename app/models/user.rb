class User < ActiveRecord::Base
  belongs_to :bar
  validates :name, :time, presence: true
end
