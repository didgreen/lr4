let Cat = {
    name: "",
    origin: "",
    size: "",
    age: 0,
    pounds: 0,
    idInDatabase:0
}
function sendEditedCat(){
    let xhrEdit = new XMLHttpRequest();
    Cat.name=document.getElementById("name").value;
    Cat.origin=document.getElementById("origin").value;
    Cat.size=document.getElementById("size").value;
    Cat.age=document.getElementById("age").value;
    Cat.pounds=document.getElementById("pounds").value;
    Cat.idInDatabase=location.search.split("=")[1];
    let catJson = JSON.stringify(Cat);
    console.log(Cat);
    xhrEdit.open("POST", "saveChanges",true);
    xhrEdit.setRequestHeader('Content-Type', 'application/json');
    xhrEdit.send(catJson);
    location.href="read"
}