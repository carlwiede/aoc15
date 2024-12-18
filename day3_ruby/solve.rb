def part1
  dirs = {'^' => [-1, 0], '>' => [0, 1], 'v' => [1, 0], '<' => [0, -1]}
  y, x = 0, 0
  visited = Set.new
  visited << [y, x]

  input = File.read "input.txt"
  input.chars.each do |c|
    dy, dx = dirs[c]
    y, x = y + dy, x + dx
    visited << [y, x]
  end

  puts "Part 1: " + visited.size.to_s
end

def part2
  dirs = {'^' => [-1, 0], '>' => [0, 1], 'v' => [1, 0], '<' => [0, -1]}
  y, x, robo_y, robo_x = 0, 0, 0, 0
  visited = Set.new
  visited << [y, x]

  input = File.read "input.txt"
  input.chars.each_with_index do |c, i|
    dy, dx = dirs[c]
    if i.even?
      y, x = y + dy, x + dx
      visited << [y, x]
    else
      robo_y, robo_x = robo_y + dy, robo_x + dx
      visited << [robo_y, robo_x]
    end
  end

  puts "Part 2: " + visited.size.to_s
end

if __FILE__ == $0
  part1
  part2
end
