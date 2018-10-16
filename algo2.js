//binary watch

// A binary watch has 4 LEDs on the top which represent the hours (0-11),
// and the 6 LEDs on the bottom represent the minutes (0-59).
// Each LED represents a zero or one, with the least significant bit on the right.

//0011
//011001
// For example, the above binary watch reads "3:25".


var readBinaryWatch = function(num) {

};


// Given a non-negative integer n which represents the number of LEDs that are currently on,
// return all possible times the watch could represent.

// Example:
// Input: n = 1
// Return: ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"]
// Note:
// The order of output does not matter.
// The hour must not contain a leading zero, for example "01:00" is not valid, it should be "1:00".
// The minute must be consist of two digits and may contain a leading zero, for example "10:2" is not valid,
// it should be "10:02".

//**************************************************************************************

// // Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
// //
// // Note:
// //
// // The length of both num1 and num2 is < 5100.
// // Both num1 and num2 contains only digits 0-9.
// // Both num1 and num2 does not contain any leading zero.
// // You must not use any built-in BigInteger library or convert the inputs to integer directly.
//
// //0 is 48, 57 is 9
// //create function that maps the addition of two character codes
// //*note since this is JS we could just add the digits, but the point of this is NOT to convert to int
// // this is doing it "the hard way"
// let asciiConversion = (digit)=>{
//   let val = 0
//   switch (digit) {
//     case 48:
//       val = 0
//       break;
//     case 49:
//       val = 1
//       break;
//     case 50:
//       val = 2
//       break;
//     case 51:
//       val = 3
//       break;
//     case 52:
//       val = 4
//       break;
//     case 53:
//       val = 5
//       break;
//     case 54:
//       val = 6
//       break;
//     case 55:
//       val = 7
//       break;
//     case 56:
//       val = 8
//       break;
//     case 57:
//       val = 9
//       break;
//
//     default:
//
//   }
//   return val
// }
//
//
// let addByAsciiConversion = (num1,num2,carry)=>{
//   //assume num1, and num2 ALWAYS "0-9" in char format
//   //incoming carry can be 0 or 1;
//
//   let addend1 = asciiConversion(num1.charCodeAt(0))
//   let addend2 = asciiConversion(num2.charCodeAt(0))
//   let sum = (addend1 + addend2 + carry) % 10
//   let  carryReturn = Math.floor( (addend1 + addend2 + carry) / 10)
//
//   // console.log(addend1);
//   // console.log(addend2);
//   // console.log(sum);
//   // console.log(carryReturn);
//   return [sum,carryReturn]
// }
// // addByAsciiConversion("8","9",0)
//
//
// let addString = (num1,num2)=>{
//   let sum = 0
//   let base10=1
//   let carry = 0
//   //reverse both strings so we are always working with first element
//   num1 = num1.split("").reverse()
//   num2 = num2.split("").reverse()
//   //loop until both of the arrays is empty AND carry  is 0
//   while(num1.length > 0 || num2.length > 0 || carry > 0){
//     //shift element 0 of both strings, store into variable
//       // if an array has no elements set variable = 0
//     let temp1 = "0"
//     let temp2 = "0"
//     if(num1.length > 0){temp1 = num1.shift()}
//     if(num2.length > 0){temp2 = num2.shift()}
//     //call adder function. send both variables and carry
//     let convertedValue = addByAsciiConversion(temp1, temp2, carry)
//     // console.log(convertedValue)
//     // multiply return element 0 by base10 and add to sum
//     sum += (convertedValue[0]*base10)
//     //convertedValue[1] will always contain what carry should be, 0 or 1
//     carry = convertedValue[1]
//     // multiply  base10 by 10
//     base10 = base10 * 10
//   }// END LOOP
//   //loop broken by Both of the arrays having no more elements
//
//   //CHECK: both array empty and carry id 0,
//   // return "test"
//   return sum
// }
//
// addString("203","500")
//
// //
// // //not sure will have to researc hand come back to this
// //
// // // Given a set of distinct integers, nums, return all possible subsets (the power set).
// // //
// // // Note: The solution set must not contain duplicate subsets.
// // //
// // // Example:
// // //
// // // Input: nums = [1,2,3]
// // // Output:
// // // [
// // //   [3],
// // //   [1],
// // //   [2],
// // //   [1,2,3],
// // //   [1,3],
// // //   [2,3],
// // //   [1,2],
// // //   []
// // // ]
// //
// //   let subset = (nums)=>{
// //     let subset = []
// //     //get all single digits
// //     // nums.forEach((element)=>{subset.push([element])})
// //     while(nums.length > 0){
// //       //loop through each element combo, shifting of first element  in each round
// //       let miniset = []
// //       for(let i=0;i< nums.length;i++){
// //         miniset.push(nums[i])
// //         console.log(miniset)
// //         subset.push(miniset)
// //       }//for
// //       nums.shift()
// //     }//while
// //
// //     return subset
// //   }//function
// //
// // subset([1,2,3])
// // // console.log(subset([1,2,3]));
