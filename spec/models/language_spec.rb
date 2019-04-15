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

  describe 'language_no_speaking' do
    before do
      create(:guide_language)
    end

    it 'returns empty array when all language are used' do
      expect(Language.language_no_speaking).to match_array([])
    end

    it 'returns array code when language that no one speaks.' do
      language_no_speaking = create(:language)
      expect(Language.language_no_speaking).to match_array([language_no_speaking.code])
    end
  end
end
