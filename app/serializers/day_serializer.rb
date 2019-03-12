class DaySerializer < ActiveModel::Serializer
  attributes :id, :today, :date, :spend, :user_id
end
