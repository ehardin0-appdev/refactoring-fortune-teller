class FortunesController < ApplicationController
  def horoscope

   all_zodiacs = Zodiac.list
   chosen_zodiac = params.fetch("the_signs").to_sym
   this_zodiac = all_zodiacs.fetch(chosen_zodiac)
   @horoscope = this_zodiac.fetch(:horoscope)
   @name = this_zodiac.fetch(:name)
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "horoscope.html.erb" })
  end
end
