require('rspec')
require('palindream')

describe("String#palindream") do
  it('informs the user whether a word is a palindrome') do
    expect(("mom").palindream()).to(eq(true))
  end

  it('accounts for different cases of capitalization') do
    expect(("Mom").palindream()).to(eq(true))
  end

  it('informs the user whether a sentence is a palindrome') do
    expect(("Lepers repel").palindream()).to(eq(true))
  end

  it('accounts for and ignores punctuation') do
    expect("A man, A plan, A canal -- Panama".palindream).to(eq(true))
  end
end
