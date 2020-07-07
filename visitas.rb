def promedio(grades)
    ratings = 0 
    all_grades = grades.count
    grades.each do |grades|
        ratings += (grades/all_grades.to_f)
    end
    
    ratings
end

print promedio([1000, 800, 250, 300, 500, 2500])