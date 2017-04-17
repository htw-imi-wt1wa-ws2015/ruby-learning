require 'rspec'

describe 'Control structures' do

  it 'should be handled by an if-elif-else-statement' do
    if_statement_done = false
    if if_statement_done == false
      if_statement_done = true
    end
    expect(if_statement_done).to eq(true)
  end

  it 'should be handled by an else-statement' do
    else_statement_done = false
    if else_statement_done == true
      # jump to else
    else
      else_statement_done = true
    end
    expect(else_statement_done).to eq(true)
  end

  it 'should be handled by an elsif-statement' do
    elsif_statement_done = false
    if elsif_statement_done == true
      # jump to elsif
    elsif elsif_statement_done == false
      elsif_statement_done = true
    end
    expect(elsif_statement_done).to eq(true)
  end

  it 'should be handled by an unless-statement' do
    unless_statement_done = false
    unless unless_statement_done == true
      unless_statement_done = false
    end
    expect(unless_statement_done).to eq(false)
  end

end
