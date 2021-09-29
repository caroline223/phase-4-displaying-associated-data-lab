class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show 
        user = find_user
        render json: user, include: :items
    end

    private

    def find_user
        User.find(params[:id])
    end

end
