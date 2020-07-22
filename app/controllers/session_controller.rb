class SessionController < ApplicationController

  def index
    render cell(Session::Cell::Index), layout: false
  end

  def sign_in
    render cell(Session::Cell::SignIn)
    @error = params[:id]
  end

  def login
    run Session::Operation::SignIn do |user|
      if user[:model]
        return redirect_to users_path
      else
        render cell(Session::Cell::SignIn, user[:errors])
      end
    end
  end
end
