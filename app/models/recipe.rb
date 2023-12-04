# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  instructions :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  dish_id      :integer
#  user_id      :integer
#
class Recipe < ApplicationRecord
  belongs_to :dish, required: true, class_name: "Dish", foreign_key: "dish_id"
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"
end
