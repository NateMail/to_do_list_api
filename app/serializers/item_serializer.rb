# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
