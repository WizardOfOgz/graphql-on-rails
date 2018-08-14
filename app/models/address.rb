class Address < ApplicationRecord
  belongs_to :user

  def to_s
    <<~ADDRESS
      #{ street1 }
      #{ street2 }
      #{ city }, #{ state }
      #{ country }
      #{ postal_code }
    ADDRESS
  end
end
