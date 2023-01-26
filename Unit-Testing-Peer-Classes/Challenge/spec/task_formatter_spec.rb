require "task_formatter"

describe TaskFormatter do
  context "Given a uncompleted task" do
    it "returns '[] Task Title'" do
      task = double(:task, complete?: false)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq("[] #{task}")
    end
  end

  context "Given a completed task:" do
    it "returns '[x] Task Title'" do
      task = double(:task, complete?: true)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq("[x] #{task}")
    end
  end
end