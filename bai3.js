//Check HTTP Status code trả về
pm.test("Check status code", function () {
    pm.response.to.have.status(200);
});

pm.test("Check name, color and view_style", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData.name).to.eql("Automation_MSB_Project_API");
    pm.expect(jsonData.color).to.eql("charcoal");
    pm.expect(jsonData.view_style).to.eql("list");

});
