class MAPumpkinFarms::CLI

  def call 
    puts "\nWelcome to New England Fall Events!\n"
    get_states
    list_states
    get_user_state
  end
  
  def get_states
    #needs to be scraped
    @states = ['CT', 'ME', 'MA', 'NH', 'RI', 'VT']
  end
  
  def list_states
    puts "Choose a state to see a list of farms."
    @states.each.with_index(1) {|state, index| puts "#{index}. #{state}"}    #iterates over array, and lists states
  end
  
  def get_user_state
    chosen_state = gets.strip
    show_farms_for(chosen_state) if valid_input(chosen_state, @states)        #if valid input, show list of farms
  end
  
  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0        #change input to integar and check validity
  end
  
  def show_farms_for(chosen_state)
    state = @states[chosen_state - 1]              #set variable to array item of @state, minus 1 for correct index
    puts "Here are pumpkin farms for #{state}"
  end
  
  #get_user_farm
  
  #list_activities
end