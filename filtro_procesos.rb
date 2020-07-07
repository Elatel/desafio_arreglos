require 'csv'
CSV.open('procesos.csv').readlines
data = CSV.open('procesos.csv').readlines.join(',')
data1 = data.split(',')
data_array = []
data1.each do |d|
    data_array.push d.to_i
end


range_number = ARGV[0].to_i
n = data_array.count
filter_data = []
n.times do |i|
    if data_array[i] > range_number
        filter_data.push data_array[i]
    end
end




CSV.open("new_procesos.csv", "w") do |csv|
    filter_data.each do |i|
        csv << [i]
    end
end
