let Cat = {
    name: "",
    origin: "",
    size: "",
    age: 0,
    pounds: 0
}
function getData(){
    Cat.name = document.getElementById("name").value;
    Cat.origin = document.getElementById("origin").value;
    Cat.size = document.getElementById("size").value;
    Cat.age = document.getElementById("age").value;
    Cat.pounds = document.getElementById("pounds").value;
    let catJson = JSON.stringify(Cat);
    let xhrWrite = new XMLHttpRequest();
    xhrWrite.open("POST", "write",true);
    xhrWrite.setRequestHeader('Content-Type', 'application/json');
    xhrWrite.send(catJson);
}