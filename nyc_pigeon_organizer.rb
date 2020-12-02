require 'pry'

def nyc_pigeon_organizer(data)

#nyc_pigeons = {}

  final_data = data.each_with_object({}) do |(key, value), nyc_pigeons|
    value.map do |key2, names|
      names.each do |name|
        if !nyc_pigeons[name]
          nyc_pigeons[name] = {}
        end
        if !nyc_pigeons[name][key]
          !nyc_pigeons[name][key] = []
        end
      nyc_pigeons[name][key].push(key2.to_s)
      end
    end
  end
  
end


=begin
pigeon_names = {}

pigeon_names = data.keys
.each do |key, value|
  pigeon_names = 
end

data.collect do |key1, name|
  pigeon_names << name
end

=end