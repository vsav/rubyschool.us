require './hero'

describe Hero do

=begin
  before do
    @hero = Hero.new 'mike'
  end
=end


  it "has a capitalized name" do
    hero = Hero.new 'mike'
    expect(hero.name).to eq 'Mike'
  end

  it "can power up" do
    hero = Hero.new 'mike'
    expect(hero.power_up).to eq 110
  end

  it "can power up" do
    hero = Hero.new 'mike'
    expect(hero.power_down).to eq 90
  end

  it "displays full hero info" do
    hero = Hero.new 'mike'
    expect(hero.hero_info).to eq 'Mike has 100 health left'
  end

end