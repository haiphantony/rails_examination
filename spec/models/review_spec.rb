# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  subject { create(:review) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid score' do
    subject.score = 0
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid guide' do
    subject.guide = nil
    expect(subject).to_not be_valid
  end
end
