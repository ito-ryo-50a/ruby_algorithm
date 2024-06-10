require 'rspec'
require 'yaml'

RSpec.describe 'コードテスト(仮設)' do
  test_cases = YAML.load_file('test_cases.yaml')

  test_cases.each_with_index do |test_case, index|
    it "テストケース #{index + 1}" do
      input = test_case['input']
      expected_output = test_case['output']
      actual_output = nil

      begin
        actual_output = IO.popen("ruby program.rb", "r+") do |io|
          io.puts input
          io.close_write
          io.read
        end.strip
      end

      expect(actual_output).to eq(expected_output)
    end
  end
end
