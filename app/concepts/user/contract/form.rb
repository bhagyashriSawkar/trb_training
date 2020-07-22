require 'reform'

module User::Contract
  class Form < Reform::Form
    property :email
    property :name
    property :password

    validates :name, :email, :password, presence: true
    validates_uniqueness_of :email
  end  
end
