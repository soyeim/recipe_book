# == Schema Information
#
# Table name: dishes
#
#  id            :integer          not null, primary key
#  description   :string
#  image         :string
#  name          :string
#  recipes_count :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
class Dish < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"

  def poster
    my_user_id = self.user_id

    matching_users = User.where({ :id => my_user_id })

    the_user = matching_users.at(0)

    return the_user
  end
end
