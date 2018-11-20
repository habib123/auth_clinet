class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def doorkeeper_unauthorized_render_options(error: nil)
    { json: { error: "Not authorized" } }
  end
end
