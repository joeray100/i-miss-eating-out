require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test

  def setup
    @restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    @restaurant2 = Restaurant.new('16:00', 'Il Posto')
  end

  def test_open_for_lunch?
    assert_equal true, @restaurant1.open_for_lunch?
    assert_equal false, @restaurant2.open_for_lunch?
  end

  def test_menu_dish_names
    @restaurant2.add_dish('Burrata')
    @restaurant2.add_dish('Pizzetta')
    @restaurant2.add_dish('Ravioli')

    assert_equal ["BURRATA", "PIZZETTA", "RAVIOLI"], @restaurant2.menu_dish_names
  end

  def test_announce_closing_time
    restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Posto')


    assert_equal "Fuel Cafe will be closing at 11:00AM", restaurant1.announce_closing_time(5)
    assert_equal "Il Posto will be closing at 11:00PM", restaurant2.announce_closing_time(7)
  end

end
