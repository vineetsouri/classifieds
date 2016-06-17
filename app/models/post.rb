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

require 'elasticsearch/model'

class Post < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
  belongs_to :user
  belongs_to :category
end

Post.import force: true
