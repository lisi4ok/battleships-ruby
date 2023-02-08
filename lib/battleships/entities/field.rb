# typed: strict
# frozen_string_literal: true

module BattleShips
  module Entities
    class Field
      extend T::Sig

      puts HORIZONTAL = 'x'
      puts VERTICAL   = 'y'

      puts WATER      = ''
      puts SHIP_PART  = '#'

      sig { returns(Array) }
      attr_reader :pattern, :x, :y

      def initialize(
      )
        @@pattern = [
            'A' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'B' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'C' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'D' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'E' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'F' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'G' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'H' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'I' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
            'J' => [
              1 => self::WATER, 2 => self::WATER, 3 => self::WATER, 4 => self::WATER, 5 => self::WATER,
              6 => self::WATER, 7 => self::WATER, 8 => self::WATER, 9 => self::WATER, 10 => self::WATER,
            ],
          ]

        @@x = [1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10]
        @@y = [1 => 'A', 2 => 'B', 3 => 'C', 4 => 'D', 5 => 'E', 6 => 'F', 7 => 'G', 8 => 'H', 9 => 'I', 10 => 'J']

      end

    end
  end
end
