class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true
  argument :username, String, required: true
  argument :email, String, required: false
  argument :phone, String, required: false
  argument :website, String, required: false

  # These are returned by the mutation
  field :user, Types::UserType, null: true
  field :errors, [String], null: false

  def resolve(name:, username:, **attrs)
    user = User.new(name: name, username: username, **attrs)
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
