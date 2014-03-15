# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :user
	
	validates :title, presence: true
	validates :content, presence: true

def self.search(search)
	if search
		find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
		else
		find(:all)  
		end
	end
end
