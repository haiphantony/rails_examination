# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Language, type: :model do
  subject { create(:language) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a code' do
    subject.code = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with duplicate a code' do
    language = Language.new(code: subject.code)
    expect(language).to_not be_valid
  end
end
