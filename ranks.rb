ranks = [[40, 85], [10, 60], [70, 160]]
intersections_counter = 0
intersections = []

ranks.each do |number, rank_position|
  ranks.each_with_index do |rank, rank_position| 
    if number.between?(rank[0], rank[1])
      intersections_counter += 1
    end  
  end
  intersections.push(intersections_counter) 
  intersections.delete(1)
  intersections_counter = 0
end
intersections.uniq.reduce(:+)
