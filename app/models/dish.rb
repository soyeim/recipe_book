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
#
class Dish < ApplicationRecord
  has_many  :recipes, class_name: "Recipe", foreign_key: "dish_id", dependent: :destroy
end
