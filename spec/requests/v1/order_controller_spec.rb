# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::OrderController, type: :request do
  describe '#create' do
    context 'when it creates a order' do
      before do
        post '/api/v1/order', params: {
          user: { name: 'Bryann Barbosa', cpf: '48218690808', email: 'bryannbarbosa@gmail.com' },
          order: { device: 'Moto G8', imei: '52339410430331', annual_price: 1498.75, parcel: 3 }
        }
      end
      it 'should return a order' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
