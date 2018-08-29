// Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
//
// Note:
//
// The length of both num1 and num2 is < 5100.
// Both num1 and num2 contains only digits 0-9.
// Both num1 and num2 does not contain any leading zero.
// You must not use any built-in BigInteger library or convert the inputs to integer directly.
let addString = (num1,num2)=>{
  //reverse both strings so we are always working with first element

  //0 is 48, 57 is 9
  //create function that maps the addition of two character codes
  //*note since this is JS we could just add the digits, but the point of this is NOT to convert to int
  // this is doing it "the hard way"


  //shift add element 0 of both strings
  //if one array is empty add carry and
  //if both array emty and carry has value, add carry to sum
  return "test"
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
