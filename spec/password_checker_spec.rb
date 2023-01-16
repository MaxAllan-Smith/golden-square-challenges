require "password_checker"

describe PasswordChecker do
  it "returns TRUE when password is greater than/equal to 8" do
    checker = PasswordChecker.new
    result = checker.check("MyPassWord2020")
    expect(result).to eq(true)
  end

  context "Invalid Password" do
    it "Raise an error with password is less than 8 characters" do
      checker = PasswordChecker.new
      expect{checker.check("Pass")}.to raise_error("Invalid password, must be 8+ characters.")
    end
  end
end