# frozen_string_literal: true

module User::Operation
  class Create < Trailblazer::Operation
    step Subprocess(User::Operation::New)
    step Contract::Validate(key: :user)
    step Contract::Persist()
    fail :display_error

    def display_error(ctx, **)
      ctx[:errors] = "Error while creating object"
    end
  end
end