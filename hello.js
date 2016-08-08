console.log("Bonjour");


// Checking type:
// var name = "Boris";
// typeof (name);


var age = 30;
if (age > 18) {
  console.log("Tu peux voter");
}
else {
  console.log("Tu ne peux pas voter");
}


for(var i=1; i < 11 ; i += 1){
  console.log(i);
}

for(var i=2; i <= 20 ; i += 2){
  console.log(i);
}


var beatles = [ "john", "paul", "ringo", "george"];
console.log(beatles[0]);

beatles.forEach(function(beatle) {
  console.log(beatle);
});


var instruments = { "john": "guitar", "paul": "bass", "ringo": "drums", "george": "guitar" };

Object.keys(instruments).forEach(function(beatle) {
  console.log(beatle + " played the " + instruments[beatle]);
});


function fullName (firstName, lastName){  // lower camel case !!
  return firstName + " " + lastName;
}

console.log(fullName("Celine", "Colas"));
















