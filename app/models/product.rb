class Product < ActiveRecord::Base

 belongs_to :user
 has_many :ad_contacts

 validates :name, :presence => true

 #paperclip
 has_attached_file :photo, :styles => { :small => "30x30>", :thumb => "100x100>", :medium => "300x300>", :large => "400x400>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension",
                  :default_url => "/images/no_image.jpg"

 #validates_attachment_presence :photo
 #validates_attachment_size :photo, :less_than => 5.megabytes
 #validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
