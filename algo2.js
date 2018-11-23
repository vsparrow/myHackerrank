//**************************************************************************************
//**************************************************************************************
// Goat Latin
// A sentence S is given, composed of words separated by spaces.
// Each word consists of lowercase and uppercase letters only.
// We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.)
//
// The rules of Goat Latin are as follows:
//
// If a word begins with a vowel (a, e, i, o, or u), append "ma" to the end of the word.
// For example, the word 'apple' becomes 'applema'.
//
// If a word begins with a consonant (i.e. not a vowel), remove the first letter and append it to the end,
//   then add "ma".
// For example, the word "goat" becomes "oatgma".
//
// Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
// For example, the first word gets "a" added to the end, the second word gets "aa" added to the end and so on.
// Return the final sentence representing the conversion from S to Goat Latin.
let isVowel = (c) => {
  return /[aeiouAEIOU]/.test(c)
}

var toGoatLatin = function(S) {
  let s = S.split(" ")
  for (i = 0; i < s.length; i++) {
    // for(j=0; j<s[i].length; j++)
    //   console.log(isVowel(s[i][j]));
    if(isVowel(s[i][0])){ s[i]+= ('a'.repeat(i+1))}
    // else {}
  }
  return s
};


console.log(toGoatLatin("I speak Goat Latin OK"));
// Output: "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"

console.log(toGoatLatin("The quick brown fox jumped over the lazy dog"));
// Output: "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"


// Notes:
// S contains only uppercase, lowercase and spaces. Exactly one space between each word.
// 1 <= S.length <= 150.

//**************************************************************************************
// Shifting Letters
// We have a string S of lowercase letters, and an integer array shifts.
// Call the shift of a letter, the next letter in the alphabet, (wrapping around so that 'z' becomes 'a').
// For example, shift('a') = 'b', shift('t') = 'u', and shift('z') = 'a'.
// Now for each shifts[i] = x, we want to shift the first i+1 letters of S, x times.
// Return the final string after all such shifts to S are applied.
var shiftingLetters = function(S, shifts) {
  let s = S.split("")
  for(i=0;i<shifts.length;i++){
    let offset = shifts[i] % 26
    for(j=0;j<=i;j++){              //shift first i letters
      let c = s[j]
      c = c.charCodeAt(0) + offset
      if(c > 122){ c = c - 26}      //wrap around alphabet if needed
      s[j] = String.fromCharCode(c) //convert int to string
    }
  }
  return s.join("")
};

console.log(shiftingLetters("abc",[3,5,9]));
// Example 1:
// Input: S = "abc", shifts = [3,5,9]
// Output: "rpl"
// Explanation:
// We start with "abc".
// After shifting the first 1 letters of S by 3, we have "dbc".
// After shifting the first 2 letters of S by 5, we have "igc".
// After shifting the first 3 letters of S by 9, we have "rpl", the answer.
// Note:
// 1 <= S.length = shifts.length <= 20000
// 0 <= shifts[i] <= 10 ^ 9
// console.log(shiftingLetters("abcza",[3,5,9,2,26]));
console.log(shiftingLetters("abc",[26,27,28])); //dee
console.log(shiftingLetters("abc",[260,260,260])); //abc
//**************************************************************************************
// Alice has a hand of cards, given as an array of integers.
// rearrange the cards into groups so that each group is size W,
//   and consists of W consecutive cards.
// Return true if and only if she can.
var breakIntoGroupsOfW = function(hand,W){
  return hand.length % W == 0
}

var isNStraightHand = function(hand, W) {
  if(!breakIntoGroupsOfW(hand,W)){return false} //cannot break into groups of W
  let sortedHand = hand.sort()
  let iterations = sortedHand.length / W
  for (let i = 0; i < iterations; i++) {      //check each group of cards
    let currentCard = sortedHand.shift()
    for(let j = 2; j <= W; j++ ){             //find next cards in subset
      let nextCardIndex = sortedHand.indexOf(currentCard + 1)
      if(nextCardIndex == -1) {return false}  //break in continous cards
      currentCard = sortedHand[nextCardIndex] //if next card found set value currentCard to new card
      sortedHand.splice(nextCardIndex,1)      //remove the card from hand
    }
  }
  return true
};


console.log(isNStraightHand([1,2,3,6,2,3,4,7,8],3));;
// Output: true
// Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8].
console.log(isNStraightHand([1,2,3,6,2,3,4,7,9],3));;
// Output: false
// Explanation: Break in subset, last hand is [6,7,9].
console.log(isNStraightHand([0,2,3,6,2,3,4,7,9],3));;
// Output: false
// Explanation: Break in subset, first hand is [0,2,3]

console.log(isNStraightHand([1,2,3,4,5],  4));
// Output: false
// Explanation: Alice's hand can't be rearranged into groups of 4.


// Note:
// 1 <= hand.length <= 10000
// 0 <= hand[i] <= 10^9
// 1 <= W <= hand.length


//**************************************************************************************

// //binary watch
//
// // A binary watch has 4 LEDs on the top which represent the hours (0-11),
// // and the 6 LEDs on the bottom represent the minutes (0-59).
// // Each LED represents a zero or one, with the least significant bit on the right.
//
// //0011
// //011001
// // For example, the above binary watch reads "3:25".
//
// //given int n, returns all possible hours from num
// //num will be 4 or less
//
//
// // let timeFormatter = (hours,minutes) => {
// //   // let time = ""
// //   // time += hours
// //   // time += ":"
// //   // minutes < 10 ? time = time + "0" + minutes : time += minutes
// //   // return time
// // }
// let timeFormatter = (hours,minutes) => (`${hours}:` + (minutes < 10 ? "0" + minutes : minutes)) //same as above
//
// var readBinaryWatch = function(num) {
//   let array = []; //empty array to hold possible solutions
//   //num.toString(2) will turn a number to binary
//   //split the binary string, and sum up the "on" units, or 1s, via a counter.
//   let hoursBinaryCount = 0;
//   let minutesBinaryCount = 0
//   for(let hours = 0; hours <= 11; hours++){
//     hours.toString(2).split("").map(n => hoursBinaryCount+=parseInt(n))
//     for(let minutes = 0; minutes <= 59; minutes++){
//       minutes.toString(2).split("").map(n => minutesBinaryCount+=parseInt(n))
//       if(hoursBinaryCount+minutesBinaryCount == num){
//         array.push(timeFormatter(hours,minutes))
//       }
//       minutesBinaryCount = 0 //reset for next minute
//     }//minutes
//     hoursBinaryCount = 0 //reset for next hour
//   }//hours
//   return array
// };
//
// console.log(readBinaryWatch(1))
// // Given a non-negative integer n which represents the number of LEDs that are currently on,
// // return all possible times the watch could represent.
//
// // Example:
// // Input: n = 1
// // Return: ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"]
// // Note:
// // The order of output does not matter.
// // The hour must not contain a leading zero, for example "01:00" is not valid, it should be "1:00".
// // The minute must be consist of two digits and may contain a leading zero, for example "10:2" is not valid,
// // it should be "10:02".

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
