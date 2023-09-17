//Check status code = 200
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

//Check name = "Automation_MSB_Project_API"
var jsonData = pm.response.json();
var name_content = jsonData.name
pm.test("Check name", function () {
    var jsonData = pm.response.json();
    pm.expect(name_content).to.eql("Automation_MSB_Project_API");
});

//Check color = "charcoal"
var jsonData = pm.response.json();
var color_content = jsonData.color
pm.test("Check color", function () {
    var jsonData = pm.response.json();
    pm.expect(color_content).to.eql("charcoal");
});

//Check view_style = "list"
var jsonData = pm.response.json();
var view_style_content = jsonData.view_style
pm.test("Check view_style", function () {
    var jsonData = pm.response.json();
    pm.expect(view_style_content).to.eql("list");
});