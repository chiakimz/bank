describe Account do
  it 'has date, credit, debit, balance by default' do
    expect(default).to_equal 'date || credit || debit || balance'
  end
end
