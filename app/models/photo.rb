# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Photo < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"
end
