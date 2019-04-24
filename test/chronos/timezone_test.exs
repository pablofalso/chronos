defmodule TimezonesTest do
  use ExUnit.Case

  import Chronos.Timezones

  test "retieve the timezone offset" do
    assert "-6:00" == offset "CST"
    assert "-6:00" == offset "Central Standard Time"
    assert "-5:00" == offset "EST"

    assert "" == offset "BOB"
  end

  test "retrieve the timezone abbreviation" do
    assert "CST" == abbreviation "Central Standard Time"
    assert "CST" == abbreviation "-6:00"
    assert "EST" == abbreviation "Eastern Standard Time"
    assert "EST" == abbreviation "-5:00"

    assert "" == abbreviation "BOB"
  end

  test "retrieve the timezone name" do
    assert "Central Standard Time" == name "CST"
    assert "Central Standard Time" == name "-6:00"
    assert "Eastern Standard Time" == name "EST"
    assert "Eastern Standard Time" == name "-5:00"

    assert "" == name "BOB"
  end

end
