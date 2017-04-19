require('rspec')
require('palindream')

describe("String#palindream") do
  it('informs the user whether a word is a palindrome') do
    expect(("mom").palindream()).to(eq(true))
  end
end
