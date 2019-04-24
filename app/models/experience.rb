# frozen_string_literal: true

class Experience < ApplicationRecord
  has_many :job_descriptions, dependent: :destroy

  accepts_nested_attributes_for :job_descriptions, allow_destroy: true, reject_if: :all_blank
end
