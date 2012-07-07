class AdContact < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :phone

  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: valid_email_regex }
  validates :name, presence:   true

  belongs_to :product
end
