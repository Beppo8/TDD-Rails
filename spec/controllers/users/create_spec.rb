require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do
    describe 'Registro de usuarios' do
        let(:user) { { email: Faker::Internet.email, age: rand(30...100), password: Faker::Internet.password(min_length: 10, max_length: 30) } }
        context 'Usuario registrado correctamente' do
            before do
                post(:create, format: :json, params: { user: user })
            end
            context 'Respuesta con status created' do
                subject { response }
                it { is_expected.to have_http_status(:created) }
            end
            context 'Respuesta con valores de user' do
                subject { payload_test }
                it { is_expected.to include(:id, :email, :age) }
            end
        end
    end
end