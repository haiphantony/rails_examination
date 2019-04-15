# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GuideLanguage, type: :model do
  subject { create(:guide_language) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid guide' do
    subject.guide = nil
    expect(subject).to be_valid
  end

  it 'is not valid with invalid language' do
    subject.language = nil
    expect(subject).to be_valid
  end
end
