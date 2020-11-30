
def nyc_pigeon_organizer(data)
  
  final_results = data.each_with_object({}) do |(key, value), final_array|
    #binding.pry
    value.each do |inner_key, names|
      names.each do |name|

 if !final_array[name]
   final_array[name] = {}
  end
  if !final_array[name][key]
    !final_array[name][key] = []
end
final_array[name][key].push(inner_key.to_s)
end
 end
    #final_array
  end 
end



# write your code here! hash in hash with arrays of strings, keys are hash with symbols, values are hashes with keys and arrays of strings. map works with arrays but not hashes.  