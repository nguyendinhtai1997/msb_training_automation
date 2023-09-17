//Check status code = 200
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

//Get response
var jsonData = pm.response.json();

//Check name = "Automation_MSB_Project_API"
var name_content = jsonData.name
pm.test("Check name", function () {
    pm.expect(name_content).to.eql("Automation_MSB_Project_API");
});

//Check color = "charcoal"
var color_content = jsonData.color
pm.test("Check color", function () {
    pm.expect(color_content).to.eql("charcoal");
});

//Check view_style = "list"
var view_style_content = jsonData.view_style
pm.test("Check view_style", function () {
    pm.expect(view_style_content).to.eql("list");
});