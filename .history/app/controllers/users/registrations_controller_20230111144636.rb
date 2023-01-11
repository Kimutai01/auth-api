# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def response_with(resource, _opts = {})
    if resource.persisted?
      render json {
        status: {code: 200, message: "Signed up successfully"},
        message: "Signed up successfully",

      }
end
