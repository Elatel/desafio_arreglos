def compara_arrays(grades, grades1)
    sum_grades = grades + grades1
    ratings = 0
    all_grades = sum_grades.count
    sum_grades.each do |sum_grades|
        ratings += (sum_grades/all_grades.to_f)
    end
    
    ratings
end

print compara_arrays([1000, 800, 250],[300, 500, 2500])