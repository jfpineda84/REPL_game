# def continue_story
#   print "press any key"
#   STDIN.getch
#   print "\r"
# end

def part1_game

  puts "\n"*3 # \n places new line. *2 multiplies thats new line
  10.times {|x| print "***"}# prints out *'s the amount of times chosen'
  puts "\n"
  puts "Welcome to the: Triathlon Game! v1.0"
  10.times {|x| print "***"}
  puts "\n" *3
  sleep(0.2)

  puts "You may choose (select a # below):" + "\n"
  # menu array & 2 hashes for the use of the game / key => value



  menu1 =  {
    1=> "Learn about what is a Triathlon",
    2=> "See the Credits"
  }

  menu2 =   {
    1=> "See the Training Types",
    2=> "Go Back",
  }

  puts menu1
  sleep(0.2)
  option = gets.chomp.to_i # is there a way to place the case loop out side this case loop?
  case option
  when 1
    sleep(0.2)
    puts <<eos
        A triathlon is a multiple-stage competition involving the
        completion of three continuous and sequential endurance
        disciplines.

        While many variations of the sport exist,
        triathlon, in its most popular form, involves:

          1. Swimming
          2. Running
          3. Cycling

        All three of these events are done in immediate succession
        over variousdistances. Lets learn about some of training involve,
        to succed in a triathlon.

        You may (select a # below):

eos
    puts menu2 # this needs to link to the begining and option below
    option1 = gets.chomp.to_i
      if option1 == 1
        part2_game
      else option1 == 2
        part1_game
      end
  when 2
    puts <<eos
    Credits:

      The Triathlon Game v1.0

      Created on June 2017
      Wyncode Academy - Eds Class

      Refernce - https://en.wikipedia.org/wiki/Triathlon

      Juan Fernando Pineda

      ... Lets go back to the begining...


eos
    sleep(3)
    part1_game
  else
    part1_game
  end
end



def part2_game # this is the second part of the game


menu =   {
      1=> "Learn about Swimming",
      2=> "Learn about Cycling",
      3=> "Learn about Running",
      4=> "Learn about Bricks training",
      5=> "Go Back to the begining",
    }
    menu2 =   {
      1=> "See the Training Types",
      2=> "Go Back",
    }

  puts <<eos
      Welcome to the training module.

      You have the option to learn about the of training and what they are about.

      You may choose:
eos
  sleep(0.2)
  puts menu
  option = gets.chomp.to_i
  case option
  when 1
      puts <<eos
      Human swimming is the self-propulsion of a person through
      water or another liquid, usually for recreation, sport, exercise, or
      survival.

      Locomotion is achieved through coordinated movement of the limbs,
      the body, or both. Humans can hold their breath underwater and undertake
      rudimentary locomotive swimming within weeks of birth, as an evolutionary
      response.

      What would like to see next?
eos
      sleep(0.2)
      puts menu2
      option1 = gets.chomp.to_i
        if option1 == 1
          part2_game
        else option1 == 2
          part1_game
        end
    when 2
      puts <<eos
      Cycling, also called bicycling or biking, is the use of bicycles for
      transport, recreation, exercise or sport. Persons engaged in cycling
      are referred to as "cyclists", "bikers", or less commonly, as
      "bicyclists".

      What would like to see next?
eos
      sleep(0.2)
      puts menu2
      option1 = gets.chomp.to_i
        if option1 == 1
          part2_game
        else option1 == 2
          part1_game
        end
    when 3
      puts <<eos
      Running is a method of terrestrial locomotion allowing humans and
      other animals to move rapidly on foot. Running is a type of gait
      characterized by an aerial phase in which all feet are above
      the ground (though there are exception.

      What would like to see next?
eos
      sleep(0.2)
      puts menu2
      option1 = gets.chomp.to_i
        if option1 == 1
          part2_game
        else option1 == 2
          part1_game
        end
    when 4
      puts <<eos
      Bricks are also known as Transitions.

      A transition area is set up where the athletes change gear for different
      segments of the race.

      This is where the switches from swimming to cycling
      and cycling to running occur. These areas are used to store bicycles,
      performance apparel, and any other accessories needed for the next stage
      of the race.

      The transition from swim to bike is referred to as T1 and
      that between the bike and run is referred to as T2. The athletes
      overall time for the race includes time spent in T1 and T2.

      Transition areas vary in size depending on the number of participants
      expected. In addition, these areas provide a social headquarters before
      the race.

      What would like to see next?
eos
      sleep(0.2)
      puts menu2
      option1 = gets.chomp.to_i
        if option1 == 1
          part2_game
        else option1 == 2
          part1_game
        end
    when 5
      part1_game
    else
      part2_game
    end

end

part1_game
part2_game
