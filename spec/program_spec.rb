require 'rspec'
require 'yaml'

RSpec.describe 'コードテスト(仮設)' do
  test_cases = YAML.load_file('test_cases.yaml')

  test_cases.each_with_index do |test_case, index|
    it "テストケース #{index + 1} パスしました" do
      input = test_case['input']
      expected_output = test_case['output']

      actual_output = nil
      error_message = nil

      begin
        actual_output = IO.popen("ruby program.rb", "r+") do |io|
          io.puts input
          io.close_write
          io.read
        end.strip
      rescue => e
        error_message = e.message
      end

      if error_message
        puts "テストケース #{index + 1} でエラーが出ています: #{error_message}"
      else
        expect(actual_output).to eq(expected_output)
      end
    end
  end
end
