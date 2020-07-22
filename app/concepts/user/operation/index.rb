# frozen_string_literal: true

module User::Operation
  class Index < Trailblazer::Operation
    step :model

    def model(options, *)
      options["model"] = User.all
    end
  end
end