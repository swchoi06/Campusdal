class UserRequestsController < ApplicationController
  def create
    uuid = params[:uuid]
    email = params[:email]
    details = params[:details]

    if uuid != nil and email != nil and details != nil
      ur = UserRequest.new

      device = Device.find_by_uuid(uuid)
      user = device.user

      ur.user = user
      ur.email = email
      ur.details = details 
      ur.save
    end

    render nothing: true, status: :ok
  end
end