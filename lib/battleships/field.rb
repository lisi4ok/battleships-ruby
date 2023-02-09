# typed: strict
# frozen_string_literal: true

module BattleShips
  class Field

    include Enumerable
    extend T::Sig

    sig { returns(Array) }
    attr_accessor :ships

=begin
   # 1  2  3  4  5  6  7  8  9  10
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  A
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  B
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  C
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  D
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  E
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  F
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  G
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  H
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  I
   # ~  ~  ~  ~  ~  ~  ~  ~  ~  ~  J

   # 1  2  3  4  5  6  7  8  9  10
   # .  .  .  .  .  .  .  .  .  .  A
   # .  .  .  .  .  .  .  .  .  .  B
   # .  .  .  .  .  .  .  .  .  .  C
   # .  .  .  .  .  .  .  .  .  .  D
   # .  .  .  .  .  .  .  .  .  .  E
   # .  .  .  .  .  .  .  .  .  .  F
   # .  .  .  .  .  .  .  .  .  .  G
   # .  .  .  .  .  .  .  .  .  .  H
   # .  .  .  .  .  .  .  .  .  .  I
   # .  .  .  .  .  .  .  .  .  .  J
=end
    sig { params(ships: Array).void }
    def initialize(ships)
      @value = {}

      X.each do |x|
        row = {}
        Y.each do |y|
          row[y]    = WATER
          @value[x] = row
        end
      end

      @ships = ships
      place_ships

    end

    sig { returns(String) }
    def string
      string = ''

      Y.each do |y|
        string += y.to_s + '  '
      end

      string += $/

      @value.each do |x, values|
        values.each_value do |value|
          string += value.to_s + '  '
        end
        string += x.to_s + $/
      end

      return string

    end

    sig { returns(Hash) }
    def hash
      return @value
    end

    private

    X = ('A'..'J')
    Y = (1..10)

    WATER = '.'
    SHIP_PART = 'X'
    # WATER    = '~'
    #SHIP_PART = '#'

    HORIZONTAL = 'x';
    VERTICAL   = 'y';


    sig { void }
    def place_ships

      @ships.each_with_index do |ship, key|

        while true do
          dimension      = rand(0..1) == 1 ? HORIZONTAL : VERTICAL
          max            = { HORIZONTAL => 10, VERTICAL => 10 }
          max[dimension] -= ship;

          x = rand(1..max[HORIZONTAL])
          y = rand(1..max[VERTICAL])

          for i in 1..ship do
            current = {HORIZONTAL => x, VERTICAL => y}
            current[dimension] += i;
            X.each_with_index do |value, index|
              if current[HORIZONTAL] == (index + 1)
                current[HORIZONTAL] = value
              end
            end
            next 2 if @value.has_key?(current[HORIZONTAL]) && @value[current[HORIZONTAL]].has_key?(current[VERTICAL])
          end
          break
        end

        for i in 1..ship do
          current = {HORIZONTAL => x, VERTICAL => y}
          current[dimension] += i;
          X.each_with_index do |value, index|
            if current[HORIZONTAL] == (index + 1)
              current[HORIZONTAL] = value
            end
          end
          @value[current[HORIZONTAL]][current[VERTICAL]] = SHIP_PART
        end

      end

    end

  end
end