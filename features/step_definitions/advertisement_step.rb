Then /should exists "(.*)" advertisement/ do |titulo|
  result = Advertisement.exists?(titulo: titulo)
  result.should be true
end
