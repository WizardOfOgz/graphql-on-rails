module Types
  class AddressType < Types::BaseObject
    field :street1, String, null: true
    field :street2, String, null: true
    field :city, String, null: true
    field :state, String, null: true
    field :country, String, null: true
    field :postalCode, String, null: true
    field :user, Types::UserType, null: true
  end
end
