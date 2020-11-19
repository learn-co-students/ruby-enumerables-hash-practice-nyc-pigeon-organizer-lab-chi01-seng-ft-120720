# create new hash 

# loop through the current hash & collect each pigeon name & insert it as the key of new hash, keys of each new has are color, gender & lives

# some orginal keys are symbols, male & female, but need to be converted into strings

# alt data set is to implement a process for converting any hash data that is in the original structure



def nyc_pigeon_organizer(data)
  
final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          !final_array[name][key] = []
        end
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end 

end
