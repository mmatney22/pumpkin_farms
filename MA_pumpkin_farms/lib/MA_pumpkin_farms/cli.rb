class MAPumpkinFarms::CLI

  def call 
    puts "\nWelcome to New England Fall Events!\n"
    get_states
    list_states
    get_user_state
  end
  
  def get_states
                
    @states = MAPumpkinFarms::State.all             #sets variable to all array, containing state objects
  end
  
  def list_states
    puts "Choose a state to see a list of pumpkin farms."
    @states.each.with_index(1) {|state, index| puts "#{index}. #{state.name}"}    #iterates over array, and lists states
  end
  
  def get_user_state
    chosen_state = gets.strip.to_i
    list_farms_for(chosen_state) if valid_input?(chosen_state, @states)        #if valid input, show list of farms
  end
  
  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0        #change input to integar and check validity
  end
  
  def list_farms_for(chosen_state)
    state = @states[chosen_state - 1]              #set variable to array item of @state, minus 1 for correct index
    puts "Here are pumpkin farms located in #{state.name}:"
    # MAPumpkinFarms::Farm.all.each.with_index(1) do |farm|       #go thru all farms and lists them
    #   puts farm.name
    # end
    #get_user_state
  end
  
  #get_user_farm
  
  #list_activities
end