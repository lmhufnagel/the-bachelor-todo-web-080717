def get_first_name_of_season_winner(data, season)
      data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestant_hometown = 0

  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        contestant_hometown += 1
      end
    end
  end
    contestant_hometown
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
    if contestant_hash["hometown"] == hometown
      return contestant_hash["occupation"]
    end
  end
end
end

def get_average_age_for_season(data, season)
ages = 0
num_of_contestants = 0
  data[season].each do |contestant_hash|
    ages += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  
end
    (ages/num_of_contestants.to_f).round
end
