pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});


pm.test("Verify response", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData.name).to.equal("Automation_MSB_Project_API");
    pm.expect(jsonData.color).to.equal("charcoal");
    pm.expect(jsonData.view_style).to.equal("list");
});