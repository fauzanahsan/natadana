class MemberController < ApplicationController
  before_action :authenticate_member!

  def create
    Member.create(params[:member])
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def member_params
      params.require(:member).permit(:name, :email, :phone_number)
    end
end
