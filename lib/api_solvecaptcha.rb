# frozen_string_literal: true

require_relative "./api_solvecaptcha/api_solvecaptcha_exceptions"
require_relative "./api_solvecaptcha/client"
require_relative "./api_solvecaptcha/version"


module ApiSolveCaptcha
  def self.new(*args)
    Client.new(*args)
  end
end

