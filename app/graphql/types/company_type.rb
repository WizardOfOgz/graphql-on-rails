module Types
  class CompanyType < Types::BaseObject
    field :name, String, null: true
    field :catchPhrase, String, null: true
  end
end
