# frozen_string_literal: true

namespace :bootstrap do
  desc 'Add the default user'
  task default_user: :environment do
    User.create(id: 30, name: 'Bryann', cpf: '48218690808', email: 'bryannbarbosa@gmail.com')
  end

  desc 'Create the default order'
  task default_order: :environment do
    Order.create(device: 'Moto G6 Plus', imei: '549529305149938', annual_price: 1200.98, parcel: 3, user_id: 30)
  end

  desc 'Populate database with initial data'
  task all: %i[default_user default_order]
end
