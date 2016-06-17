# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  category_id   :integer
#  title         :string
#  description   :text
#  contact_name  :string
#  contact_no    :string
#  contact_email :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
end
