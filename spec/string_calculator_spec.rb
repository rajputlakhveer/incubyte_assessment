describe 'StringCalculator' do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end
end