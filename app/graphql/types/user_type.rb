module Types
  class UserType < Types::BaseObject
    field :name, String, null: true
    field :username, String, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :website, String, null: true
    field :address, Types::AddressType, null: true
    field :company, Types::CompanyType, null: true
    field :posts, [Types::PostType], null: true
  end
end
