class SignupSerializer < ActiveModel::Serializer
  attributes :id, :activity_id, :camper_id, :time
end
