# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
end
