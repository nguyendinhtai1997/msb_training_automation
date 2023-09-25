//status_code = 200
pm.test("Kiểm tra Status Code", function () {
    pm.response.to.have.status(200);
});

var jsonData = pm.response.json();
//  name = "Automation_MSB_Project_API"
pm.test("Kiểm tra name", function () {
    pm.expect(jsonData.name).to.eql("Automation_MSB_Project_API");
});
//color = "charcoal"
pm.test("Kiểm tra color", function () {
    pm.expect(jsonData.color).to.eql("charcoal");
});
//view_style = "list"
pm.test("Kiểm tra View style", function () {
    pm.expect(jsonData.view_style).to.eql("list");
});