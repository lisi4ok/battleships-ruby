# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

Dir.glob("**/*.rb", base: __dir__).each { |path| require_relative path }

module BattleShips

end
