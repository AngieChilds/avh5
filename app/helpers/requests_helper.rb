module RequestsHelper
  def level_count(request)
  result = ''
  request.horselists.group(:currant_level).count.each do |level,count|
    result << "Level: #{level}  Count: #{count} <br/>"
    end
  result.html_safe
end
def range_count(request)
  result = ''
  request.horselists.group(:range).count.each do |range,count|
    result << "Range: #{level}  Count: #{count} <br/>"
    end
  result.html_safe
end


 

end
