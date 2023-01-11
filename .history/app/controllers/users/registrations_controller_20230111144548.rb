# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def response_with(resource, _opts = {})
    if resource.persisted?
      
  end
end
