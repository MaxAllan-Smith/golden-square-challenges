require "todo_list"

describe "task_checker method:" do
  context "When given an empty string," do
    it "returns error" do
      expect{task_checker("")}.to raise_error("Invalid Input: Please Type Something")
    end
  end
end