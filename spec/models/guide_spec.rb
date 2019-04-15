# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Guide, type: :model do
  subject { create(:guide) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a email' do
    subject.email = ''
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid email' do
    subject.email = Faker::Name.name
    expect(subject).to_not be_valid
  end

  it 'is not valid with duplicate email' do
    guide = Guide.new(email: subject.email)
    expect(guide).to_not be_valid
  end
end
