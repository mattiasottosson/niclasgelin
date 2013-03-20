class Niclas
  attr_accessor :got_smoke, :got_coffee, :is_on_balcony

  def initialize
    set_sleep_statuses
  end

  # Calculating awake posibility. Based on randomness to simulate Niclas IRL.
  def awake?
    awake = rand(2) == 0
    awake ? set_awake_statuses : set_sleep_statuses

    awake
  end

  def feeling_good?
    got_smoke && got_coffee && is_on_balcony
  end

  def ready_to_connect?
    awake? && feeling_good?
  end

  def current_status
    if ready_to_connect?
      reach_iphone_and_call_mr_ottosson
    else
      puts 'Asleep. Aka business as usual'
      sleep 10
      current_status
    end
  end

  class << self
    def check_current_status
      puts 'Checking current status on myself'
      Niclas.new.current_status
    end
  end

  private

  def reach_iphone_and_call_mr_ottosson
    begin
      raise "Something went wrong. This should be impossible."
    rescue
      puts 'Rescued from akwardness'
      puts "Problem: Still don't now what to do or how to connect to outer world"
    end
  end

  def set_awake_statuses
    self.got_smoke, self.got_coffee, self.is_on_balcony = true, true, true
  end

  def set_sleep_statuses
    self.got_smoke, self.got_coffee, self.is_on_balcony = false, false, false
  end
end

Niclas.check_current_status
