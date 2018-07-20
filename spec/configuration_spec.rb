# frozen_string_literal: true

describe Noths::Configuration do
  let(:config) { Noths::Configuration.default }

  before do
    Noths.configure do |c|
      c.scheme    = 'https'
      c.host      = 'api.example.com'
      c.base_path = '/v1'
    end
  end

  describe '#base_url' do
    it 'should have the default value' do
      expect(config.base_url).to eq("https://api.example.com/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        expect(config.base_url).to eq("https://api.example.com")
      end
    end
  end
end
