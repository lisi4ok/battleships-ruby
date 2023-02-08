# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

Dir.glob('battleships/**/*.rb', base: __dir__).each do |filepath|
  require_relative filepath
end

module BattleShips
  extend T::Sig
end
