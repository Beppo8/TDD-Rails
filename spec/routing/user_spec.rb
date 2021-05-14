require 'rails_helper'

describe 'Rutas de resources user' do
    it 'Registro de usuarios' do
        expect(post: '/v1/users').to route_to(
            format: 'json',
            controller: 'v1/users',
            action: 'create'
        )
    end
    it 'Login del usuario' do
        expect(post: '/v1/users/login').to route_to(
            format: 'json',
            controller: 'v1/users',
            action: 'login'
        )
    end
end