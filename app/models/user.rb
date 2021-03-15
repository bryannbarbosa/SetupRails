# frozen_string_literal: true

class User < ApplicationRecord
  def initialize(params)
    super
    @name = params[:name]
    @cpf = params[:cpf]
    @email = params[:email]
  end
end
