def nyc_pigeon_organizer(data)
  # write your code here!
  
  
  new_hash = {}
  
  data.each do |key_category, value|
    value.each do |key_specific_items, array|
      array.each do |name|
        if new_hash[name] == nil 
          new_hash[name] ={}
        end
        if new_hash[name][key_category] == nil
          new_hash[name][key_category] = []
        end
        new_hash[name][key_category].push(key_specific_items.to_s)
      end
    end
  end
  new_hash
end
