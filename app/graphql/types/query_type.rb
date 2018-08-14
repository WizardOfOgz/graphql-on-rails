module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [UserType], null: false, description: "All users." do
      argument :limit, Integer, required: false
    end

    def users(limit: nil)
      result = User.all
      result = result.limit(limit) if limit
      result
    end

    field :user, UserType, null: false, description: "Get a user by username." do
      argument :username, String, required: true
    end

    def user(username:)
      User.find_by!(username: username)
    end

    field :companies, [CompanyType], null: false, description: "All companies."

    def companies
      Company.all
    end
  end
end
