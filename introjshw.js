function titleize(names, callback) {

  const map1 = names.map(name=>
    "Mx. " + name + " Jingleheimer Schmidt");
  callback(map1);
};


// titleize(["Mary", "Brian", "Leo"], (map1) => {
//   map1.forEach(name => console.log(name));
// });


titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
});
// Mx. Mary Jingleheimer Schmidt
// Mx. Brian Jingleheimer Schmidt
// Mx. Leo Jingleheimer Schmidt
// undefined