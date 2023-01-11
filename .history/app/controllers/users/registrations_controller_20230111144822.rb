# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def response_with(resource, _opts = {})
    if resource.persisted?
      render json {
        status: {code: 200, message: "Signed up successfully"},
        data: resource

      }
    else
      render json {
        status: {code: 500, message: "Signed up failed"},
        error: resource.errors.
      }
    end
end
