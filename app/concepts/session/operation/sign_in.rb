module Session::Operation
  class SignIn < Trailblazer::Operation
    step :valid_user?

    def valid_user?(ctx, **)
      ctx[:model] = User.find_by(email: ctx[:params][:email], password: ctx[:params][:password])
      ctx[:errors] = 'Invalid username or password' unless ctx[:model]
    end
  end
end
