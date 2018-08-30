// Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
//
// Note:
//
// The length of both num1 and num2 is < 5100.
// Both num1 and num2 contains only digits 0-9.
// Both num1 and num2 does not contain any leading zero.
// You must not use any built-in BigInteger library or convert the inputs to integer directly.

//0 is 48, 57 is 9
//create function that maps the addition of two character codes
//*note since this is JS we could just add the digits, but the point of this is NOT to convert to int
// this is doing it "the hard way"
let asciiCoversion = (digit)=>{
  let val = 0
  switch (digit) {
    case 48:
      val = 0
      break;
    case 49:
      val = 1
      break;
    case 50:
      val = 2
      break;
    case 51:
      val = 3
      break;
    case 52:
      val = 4
      break;
    case 53:
      val = 5
      break;
    case 54:
      val = 6
      break;
    case 55:
      val = 7
      break;
    case 56:
      val = 8
      break;
    case 57:
      val = 9
      break;

    default:

  }
  return val
}


switch(fruits) {
    case "Banana":
        text = "Banana is good!";
        break;
    case "Orange":
        text = "I am not a fan of orange.";
        break;
    case "Apple":
        text = "How you like them apples?";
        break;
    default:
        text = "I have never heard of that fruit...";
}

let addByAsciiConversion = (num1,num2,carry)=>{
  //assume num1, and num2 ALWAYS "0-9" in char format
  //incoming carry can be 0 or 1
  console.log(num1.charCodeAt(0));
  console.log(num2.charCodeAt(0));
  let  carryReturn = 0
}

let addString = (num1,num2)=>{
  //reverse both strings so we are always working with first element


  let sum = 0
  let base10=1
  let carry = 0
  //loop until both of the arrays is empty AND carry  is 0
    //shift element 0 of both strings, store into variable
      // if an array has no elements set variable = 0
    //call adder function. send both variables and carry
      //if adder return has 1 element, multiply return element 0 by base10 and add to sum
        // set carry to 0
      //else adder has 2 elements, the second a carry value, set carry to returned carry value
    // multiply  base10 by 10

  //loop broken by Both of the arrays having no more elements

  //CHECK: both array empty and carry id 0,
  return "test"
  //return sum
}

addString(203,500)

//
// //not sure will have to researc hand come back to this
//
// // Given a set of distinct integers, nums, return all possible subsets (the power set).
// //
// // Note: The solution set must not contain duplicate subsets.
// //
// // Example:
// //
// // Input: nums = [1,2,3]
// // Output:
// // [
// //   [3],
// //   [1],
// //   [2],
// //   [1,2,3],
// //   [1,3],
// //   [2,3],
// //   [1,2],
// //   []
// // ]
//
//   let subset = (nums)=>{
//     let subset = []
//     //get all single digits
//     // nums.forEach((element)=>{subset.push([element])})
//     while(nums.length > 0){
//       //loop through each element combo, shifting of first element  in each round
//       let miniset = []
//       for(let i=0;i< nums.length;i++){
//         miniset.push(nums[i])
//         console.log(miniset)
//         subset.push(miniset)
//       }//for
//       nums.shift()
//     }//while
//
//     return subset
//   }//function
//
// subset([1,2,3])
// // console.log(subset([1,2,3]));
