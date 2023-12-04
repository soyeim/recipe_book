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
end
