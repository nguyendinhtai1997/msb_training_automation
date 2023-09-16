//status_code = 200
pm.test("Kiểm tra Status Code", function () {
    pm.response.to.have.status(200);
});


//  name = "Automation_MSB_Project_API"
var jsonData = pm.response.json();
var name_content = jsonData.name
pm.test("Kiểm tra name", function () {
    var jsonData = pm.response.json();
    pm.expect(name_content).to.eql("Automation_MSB_Project_API");
});
//color = "charcoal"
var jsonData = pm.response.json();
var color_content = jsonData.color
pm.test("Kiểm tra color", function () {
    var jsonData = pm.response.json();
    pm.expect(color_content).to.eql("charcoal");
});
