module Types
  class PostType < Types::BaseObject
    field :body, String, null: true
    field :user, Types::UserType, null: true
  end
end
