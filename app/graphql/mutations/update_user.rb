class Mutations::UpdateUser < Mutations::BaseMutation
  argument :id, String, required: true, description: "The ID for an existing user is its username."
  argument :name, String, required: false
  argument :username, String, required: false
  argument :email, String, required: false
  argument :phone, String, required: false
  argument :website, String, required: false

  # These are returned by the mutation
  field :user, Types::UserType, null: true
  field :errors, [String], null: false

  def resolve(id:, **attrs)
    user = User.find_by!(username: id)
    user.attributes = attrs

    if user.save
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
