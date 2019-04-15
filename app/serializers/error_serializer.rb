# frozen_string_literal: true

module ErrorSerializer
  def self.serialize(errors)
    return if errors.nil?
    json = {}
    json[:errors] = {}
    errors.each { |k, v| json[:errors].merge!(k => v.is_a?(Hash) ? v.first : v) }
    json
  end
end
