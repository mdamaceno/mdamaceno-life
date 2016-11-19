require 'spec_helper'

describe Mdamaceno::Life do
  let(:show) { Mdamaceno::Life::Show.new }

  it 'has a version number' do
    expect(Mdamaceno::Life::VERSION).not_to be nil
  end

  it 'prints fullname' do
    expect(Mdamaceno::Life::FULLNAME).to eq('MARCO ANTONIO ANIBAL DAMACENO')
  end

  it 'prints a cool name' do
    expect(Mdamaceno::Life::COOLNAME).to eq('Marco Damaceno')
  end

  describe '#birthdate' do
    it 'prints birthdate' do
      expect(show.birthdate).to eq('17/10/1988')
    end
  end

  describe '#event' do
    it 'prints event' do
      expect(show.event(5)).not_to be_nil
    end

    it 'prints event passing string' do
      expect(show.event('5')).not_to be_nil
    end

    it 'returns warning if not a number' do
      expect(show.event('a')).to eq 'Digite um número válido!'
    end

    it "prints with 'Marco Damaceno' included" do
      expect(show.event(5)).to include 'Marco Damaceno'
    end

    it 'prints warning if age is invalid' do
      expect(show.event(29)).to eq "#{Mdamaceno::Life::COOLNAME} ainda tem #{Mdamaceno::Life::AGE} anos"
      expect(show.event(-1)).to eq 'Ninguèm tem menos que 0 anos né.'
    end
  end

  describe '#occupation' do
    it 'prints occupation' do
      expect(show.occupation).to eq 'Desenvolvedor web'
    end
  end

  describe '#scholarity' do
    it 'prints scholarity' do
      expect(show.scholarity).to eq 'Ensino Superior Completo'
    end
  end

  describe '#fullname' do
    it 'prints fullname' do
      expect(show.fullname).to eq Mdamaceno::Life::FULLNAME
    end
  end

  describe '#coolname' do
    it 'prints coolname' do
      expect(show.coolname).to eq Mdamaceno::Life::COOLNAME
    end
  end

  describe '#age' do
    it 'prints age' do
      expect(show.age).to eq Mdamaceno::Life::AGE.to_s
    end
  end
end
