



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





























