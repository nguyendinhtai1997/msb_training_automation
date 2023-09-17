pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
var jsonData = pm.response.json();
var name = jsonData.name
var color = jsonData.color
var view_style = jsonData.view_style
pm.test("kiểm tra name", function () {
    pm.expect(name).to.eql("Automation_MSB_Project_API");
});
pm.test("kiểm tra color", function () {
    pm.expect(color).to.eql("charcoal");
});
pm.test("kiểm tra view_style", function () {
    pm.expect(view_style).to.eql("list");
});