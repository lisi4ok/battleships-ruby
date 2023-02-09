#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "battleships"

ships = [5, 2, 1]
field = BattleShips::Field.new(ships)



# puts BattleShips::Entities::Field::X.inspect
# puts BattleShips::Entities::Field::Y.inspect
# puts BattleShips::Entities::Field::PATTERN.inspect
# #
# print field.string
# print field.hash
# puts BattleShips::Entities::Field::X.inspect
# puts BattleShips::Entities::Field::Y.inspect
# #
# puts field.x.inspect
# puts field.y.inspect
# puts field.pattern.inspect
