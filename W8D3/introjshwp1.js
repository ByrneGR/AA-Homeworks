// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }


// const madLib = function(verb, adjective, noun) {
//   console.log(`We shall ${verb} the ${adjective} ${noun}`)
// }

// madLib('make', 'best', 'guac');

function isSubstring(searchString, subString){
  if (searchString.includes(subString)) return true;
  else return false;
}

isSubstring("time to program", "time")
isSubstring("Jump for joy", "joys")
// true

function fizzBuzz(array) {
  let final = [];

    array.forEach(ele => {
      if ((ele % 3 === 0) || (ele % 5 === 0)) {
        final.push(ele); }
    });
    return final;
}

fizzBuzz([1,3,4,15,3,18,24,25])

function isPrime(num) {
  if (num === 2) return true;
  if (num <= 1) return false;

  for (let i = 2; i < num; i++) {
    if (num % i === 0) return false;
  }
  return true;
}

isPrime(5)

function sumofNPrimes(n) {
  const arr = [];
  for (let i = 0; arr.length < n; i++) {
    if (isPrime(i)) {
      arr.push(i);}
  }
  return arr.reduce((sum, current) => sum + current, 0);
}
