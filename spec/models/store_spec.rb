require 'rails_helper'

RSpec.describe Store, type: :model do
  describe 'Validacion del modelo store' do
    subject { build(:store) }
    it 'validar si el name esta presente' do
      should validate_presence_of(:name)
    end
    it 'Validar si existe relacion con owner' do
      should have_one(:owner)
    end
    it 'Validar si existe relacion con employees' do
      should have_many(:employees)
    end
  end
end
