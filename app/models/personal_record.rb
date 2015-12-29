class PersonalRecord < ActiveRecord::Base
  validates :exercise, :presence => true
  validates :weight, :presence => true, :numericality => true
end
