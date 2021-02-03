class Restaurant
attr_reader :opening_time,
            :name,
            :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name =name
    @dishes = []
  end

  def closing_time(time)
    if @name =='Fuel Cafe'
      '18:00'
    elsif @name == 'Il Poggio'
      '23:00'
    end
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time < '12:00'
      true
    else
      false
    end
  end

  def menu_dish_names
    @dishes.map(&:upcase)
  end

  def announce_closing_time(time)
    if @name =='Fuel Cafe'
      "Fuel Cafe will be closing at 11:00AM"
    elsif @name == 'Il Posto'
      "Il Posto will be closing at 11:00PM"
    end
  end

end
