class UsersController < ApplicationController

  def index
    run User::Operation::Index
    render cell(User::Cell::Index, result['model']), layout: false
  end

  def new
    run User::Operation::New do
      return render cell(User::Cell::New, nil, form: @form)
    end
  end

  def create
    run User::Operation::Create do |user|
      byebug
      token = helpers.encode(user_id: user[:model].id)
      session[:token] = token
      return redirect_to users_path
    end
  end
end
