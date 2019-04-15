# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Activity, type: :model do
  subject { create(:activity) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
