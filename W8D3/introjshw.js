// function titleize(names, callback) {

//   const map1 = names.map(name=>
//     "Mx. " + name + " Jingleheimer Schmidt");
//   callback(map1);
// };



// titleize(["Mary", "Brian", "Leo"], (names) => {
//   names.forEach(name => console.log(name));
// });
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt
// undefined

function Elephant(name, height, tricks=[]) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + " goes 'phrRRRRRRRRRRR!!!!!!!");
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  console.log(this.name + " is " + this.tricks[Math.floor(Math.random() * this.tricks.length)] + "!");
}

Elephant.paradeHelper = function(elephant) {
  console.log(elephant.name + " is trotting by!")
}

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
// let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
// let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// let herd = [ellie, charlie, kate, micah];

//   herd.forEach(elephant => Elephant.paradeHelper(elephant));

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
};


  // let bfastOrder = dinerBreakfast();
// "I'd like cheesy scrambled eggs please"
  // bfastOrder("chocolate chip pancakes");

"I'd like cheesy scrambled eggs and chocolate chip pancakes please."
