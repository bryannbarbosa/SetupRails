# frozen_string_literal: true

module Api
  module V1
    class OrderController < ApplicationController
      def create
        render json: { user: user, order: order }, status: :ok
      end

      private

      def user
        return User.create(user_params) unless User.exists?(cpf: user_params[:cpf])

        User.find_by(cpf: user_params[:cpf])
      end

      def order
        return Order.create(order_params.merge({ user_id: user[:id] })) unless Order.exists?(imei: order_params[:imei])

        order_finded = Order.find_by(user_id: user[:id], imei: order_params[:imei])
        order_finded || { message: 'IMEI já existe.' }
      end

      def order_params
        params.require(:order).permit(:device, :imei, :annual_price, :parcel)
      end

      def user_params
        params.require(:user).permit(:name, :cpf, :email)
      end
    end
  end
end
