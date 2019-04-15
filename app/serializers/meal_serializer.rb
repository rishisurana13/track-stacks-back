class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal, :date, :user_id
end
