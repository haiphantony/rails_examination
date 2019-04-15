# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GuideActivity, type: :model do
  subject { create(:guide_activity) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid guide' do
    subject.guide = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid activity' do
    subject.activity = nil
    expect(subject).to_not be_valid
  end
end
