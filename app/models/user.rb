class User < ActiveRecord::Base
  attr_accessible :admin, :born, :email, :name, :note, :weight

  validates :name, :presence => true

  validates :email, :format => /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/

  validates :weight, :numericality => true

end
