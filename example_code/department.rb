
class Department
  # ...

  def update_name(new_name)
    old_name = name
    self.name = new_name
    self.save!

    ChangeLog.create_entry(self, old_name, new_name)
  end
end

describe "#update_name" do
  it "updates name and creates a changelog entry" do
    department = create(:department)

    expect(ChangeLog).to receive(:create_entry).
      with(department, "Web Developent", "Engineering")
    expect { department.update_name("Engineering") }.
     to change { department.name }.
       from("Web Development").
       to("Engineering")
  end
end




