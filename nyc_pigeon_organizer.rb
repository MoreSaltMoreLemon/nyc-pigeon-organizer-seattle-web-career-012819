def nyc_pigeon_organizer(data)
  organized_by_pigeons = {}
  data.each do |property, values|
    values.each do |value, pigeons|
      # puts "VALUE: " + value.to_s
      pigeons.each do |pigeon|
        # puts "PIGEON " + pigeon.to_s
        # puts organized_by_pigeons.inspect
        value_name = value.to_s
        # unless organized_by_pigeons.is_a? Hash
        #   organized_by_pigeons = {}
        # end
        unless organized_by_pigeons.key?(pigeon)
          organized_by_pigeons[pigeon] = {}
        end
        unless organized_by_pigeons[pigeon][property].is_a? Array
          organized_by_pigeons[pigeon][property] = []
        end
        
        organized_by_pigeons[pigeon][property] << value_name
      end
    end
  end
  organized_by_pigeons
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# puts nyc_pigeon_organizer(pigeon_data).inspect