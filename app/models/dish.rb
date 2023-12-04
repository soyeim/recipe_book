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
  has_many(:recipes)
end
