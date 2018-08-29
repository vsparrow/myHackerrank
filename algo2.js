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
