file = File.open('./data/ktsm.txt','r')
content = file.readlines
file.close
new_file = []
content.each do |x|
  new_file << x.split(',')
end
time = Time.now
year = time.year 
month = time.month
new_file.each do |a|
  date = a[1].split(' ')
  expired_device = a.join(', ')
      if date[0].to_i == year and date[1].to_i < month
        puts "Просрочено: #{expired_device}"
      end
      if date[0].to_i < year  
        puts "Просрочено: #{expired_device}"
      end
      if date[0].to_i == year and date[1].to_i == month
        puts "Замена в этом месяце: #{expired_device}"
      end
      if date[0].to_i == year and date[1].to_i - month == 1 
        puts "До замены остался 1 месяц: #{expired_device}" 
      end
      if date[0].to_i - year == 1 and date[1].to_i == 1 and month == 12
        puts "До замены остался 1 месяц: #{expired_device}" 
      end
end




 
  




