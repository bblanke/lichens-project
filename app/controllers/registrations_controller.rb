class RegistrationsController < Devise::RegistrationsController
  respond_to :json
end

class SessionsController < Devise::RegistrationsController
  respond_to :json
end