module RequestsHelper
  def level_count(request)
  result = ''
  request.horselists.group(:currant_level).count.each do |level,count|
    result << "Level: #{level}  Count: #{count} <br/>"
    end
  result.html_safe
end
def range0_count(request)
  result = ''
  request.horselists.group(:range).sum.each do |range,sum|
    result << "Level 1 - 10:#{range} #{sum} <br/>"
    end
  result.html_safe
end
def range1_count(request)
  result = ''
  request.horselists.group(:range1).count.each do |range1,count|
    result << "Level 11 - 20: #{count} <br/>"
    end
  result.html_safe
end
def range2_count(request)
  result = ''
  request.horselists.group(:range2).count.each do |range2,count|
    result << "Level 21 - 30: #{count} <br/>"
    end
  result.html_safe
end

def range3_count(request)
  result = ''
  request.horselists.group(:range3).count.each do |range3,count|
    result << "Level 31 - 40: #{count} <br/>"
    end
  result.html_safe
end
def range4_count(request)
  result = ''
  request.horselists.group(:range4).count.each do |range4,count|
    result << "Level 41 - 50: #{count} <br/>"
    end
  result.html_safe
end
 def range5_count(request)
  result = ''
  request.horselists.group(:range5).count.each do |range5,count|
    result << "Level 51 - 60: #{count} <br/>"
    end
  result.html_safe
end
def range6_count(request)
  result = ''
  request.horselists.group(:range6).count.each do |range6,count|
    result << "Level 61 - 70: #{count} <br/>"
    end
  result.html_safe
end
def range7_count(request)
  result = ''
  request.horselists.group(:range7).count.each do |range7,count|
    result << "Level 71 - 80: #{count} <br/>"
    end
  result.html_safe
end
def range8_count(request)
  result = ''
  request.horselists.group(:range8).count.each do |range8,count|
    result << "Level 81 - 90: #{count} <br/>"
    end
  result.html_safe
end
def range9_count(request)
  result = ''
  request.horselists.group(:range9).count.each do |range9,count|
    result << "Level 91 - 100: #{count} <br/>"
    end
  result.html_safe
end
def range10_count(request)
  result = ''
  request.horselists.group(:range10).count.each do |range10,count|
    result << "Level 100+: #{count} <br/>"
    end
  result.html_safe
end
def range_count(request)
result = ''
  request.horselists[:range].collect{|c| c=="1"}.compact.count
result << " #{count}"

result.html_safe
end
end


