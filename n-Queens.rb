#/usr/bin/env ruby
require_relative 'board_positions'

def valid_configuration?(positions)
  width, height = Math.sqrt(positions.length).to_i
  characters = ""
  width.times { characters << "." }

  rows = positions.scan(/#{characters}/)
  columns = Hash.new(0)
  diagonals = []

  # Check for Row conflicts
  rows.each do |row|
    return false if row.count('Q') > 1
  end

  # Check for column conflicts
  rows.each do |row|
    row.each_char.with_index do |char, index|
      if char == "Q"
        columns[index] += 1
        diagonals << index
      end
    end
  end
  
  return false if columns.max and columns.max_by{|k,v| v}[1] > 1

  # Check Diagonal conflicts
  diagonals.each_with_index do |num1, index1|
    diagonals.each_with_index do |num2, index2|
      unless index1 == index2
        return false if (num2 - num1).abs == (index2 - index1).abs
      end
    end
  end

  return true
end


verbose = true
boards = BoardPositions.populate_board_array()
puts ?\n

boards.each do |board|
  unformatted_board = board.gsub(/\s+/, "").strip
  dimensions = Math.sqrt(unformatted_board.length).to_i

  if valid_configuration?(unformatted_board)
    puts "Valid Solution for #{dimensions}x#{dimensions}:"
    puts "\n#{board.gsub(/[ ]/, '')} \n\n"
  else
    puts "Invalid Solution for #{dimensions}x#{dimensions}"
    puts "\n#{board.gsub(/[ ]/, '')} \n\n" if verbose
  end
end

