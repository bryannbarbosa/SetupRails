# frozen_string_literal: true

class Order < ApplicationRecord
  def initialize(params)
    super
    @user_id = params[:user_id]
    @device = params[:device]
    @imei = params[:imei]
    @annual_price = params[:annual_price]
    @parcel = params[:parcel]
  end
end
