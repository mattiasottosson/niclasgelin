class Niclas

  def self.check_current_status
    puts 'Checking current status on myself'

    # Calculating awake posibility. Based on randomness to simulate Niclas IRL.
    awake = rand(2) == 0 ? false : true

    if awake == true
      got_smoke = true
      got_coffee = true
      is_on_balcony = true
    end

    ready_to_connect = got_smoke && got_coffee && is_on_balcony ? true : false

    if ready_to_connect
      self.reach_iphone_and_call_mr_ottosson
    else
      puts 'Asleep. Aka business as usual'
      sleep 10
      self.check_current_status
    end
  end

  def self.reach_iphone_and_call_mr_ottosson
    begin
      raise "Something went wrong. This should be impossible."
    rescue
      puts 'Rescued from akwardness'
      puts "Problem: Still don't now what to do or how to connect to outer world"
    end
  end

end

Niclas.check_current_status
