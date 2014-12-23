class Post < ActiveRecord::Base
  has_attached_file :image,
	styles: {:normal => "180x180>", :medium => "140x140>", :thumb => "100x100#" }, 
		:default_style => :medium, 
		:default_url => "/assets/images/logo.png"
  
  validates :title, presence: true
  validates :description, presence: true
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/(png|gif|jpeg|jpg)\Z/,
	    :size => { :in => 0..100.kilobytes }

end
