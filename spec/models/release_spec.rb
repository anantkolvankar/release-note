require 'rails_helper'
RSpec.describe Release, type: :model do
  it 'has a valid factory' do
    release = FactoryGirl.create(:release)
    expect(release).to be_valid
  end
end
