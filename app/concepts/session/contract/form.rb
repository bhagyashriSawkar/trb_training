require 'reform'

module Session::Contract
  class Form < Reform::Form
    property :email
    property :password

    validates :email, :password, presence: true
  end  
end
