require 'rspec'
require './lib/wizard'

RSpec.describe Wizard do
  it 'has a name' do
    wizard = Wizard.new('Eric')
    expect(wizard.name).to eq('Eric')
  end

  it 'has a different name' do
    wizard = Wizard.new('Alex')
    expect(wizard.name).to eq('Alex')
  end

  it 'is bearded by default' do
    wizard = Wizard.new('Ben')
    expect(wizard.bearded?).to be true
  end

  it 'is not always bearded' do
    wizard = Wizard.new('Valerie', bearded = false)
    expect(wizard.bearded?).to be false
  end

  it 'has root powers' do
    wizard = Wizard.new('Stella', bearded = false)
    expect(wizard.incantation('nonsense')).to eq('abraca nonsense')
  end

  it 'has many root powers' do
    wizard = Wizard.new('Sal', bearded = true)
    expect(wizard.incantation('bla bla')).to eq('abraca bla bla')
  end

  it 'starts rested' do
    wizard = Wizard.new("Ben")

    expect(wizard.rested?).to be true
  end

  it 'can cast spells' do
    wizard = Wizard.new("Ben")

    expect(wizard.cast).to eq("MAGIC MISSILE!")
  end

  it 'gets tired after casting three spells' do
    wizard = Wizard.new("Ben")

    wizard.cast
    wizard.cast

    expect(wizard.rested?).to be true

    wizard.cast

    expect(wizard.rested?).to be false
  end
end
