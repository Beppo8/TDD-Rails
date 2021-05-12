require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validaciones del modelo user' do
    subject { build(:user) }
    it 'validar si el email esta presente' do
      should validate_precense_of(:email)
    end
    it 'validar si el password esta presente' do
      should validate_precense_of(:password_digest)
    end
    it 'validar si el type esta presente' do
      should validate_precense_of(:type)
    end
    it 'validar si el age esta presente' do
      should validate_precense_of(:age)
    end

    it 'validar si el correo no es erroneo' do
      should validate_uniqueness_of(:email)
    end

    it 'validar que no acepte correos incorrectos' do
      should_not allow_value("test").for(:email)
    end

    it "Validar si age es un numero entero" do
      should validate_numericality_of(:age).only_integer
    end

    it "Validar si la edad es un numero mayor o igual a 18" do
      should validate_numericality_of(:age).is_greater_than_or_equal_to(18)
    end

    it "Validar si la edad es un numero menor o igual a 100" do
      should validate_numericality_of(:age).is_less_than_or_equal_to(100)
    end

  end
end
