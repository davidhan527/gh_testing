
class Department
  # ...

  def update_name(new_name)
    old_name = name
    self.name = new_name
    self.save!

    ChangeLog.create_entry(self, old_name, new_name)
  end
end

it "updates name and create a changelog entry" do
  expect(ChangeLog).to receive(:create_entry).
    with(department, "Web Developent", "Engineering")
end

















