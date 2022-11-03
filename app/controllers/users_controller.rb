class UsersController < ApplicationController

  def show
    user = User.find_by!(id: params[:id])
    render json: user, include: :items
  rescue ActiveRecord::RecordNotFound => e
    render json: {error: e.message}, status: 404
  end

end
