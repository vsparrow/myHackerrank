//The count-and-say sequence is the sequence of integers with the first five terms as following:
//
// 1.     1
// 2.     11
// 3.     21
// 4.     1211
// 5.     111221
// 1 is read off as "one 1" or 11.
// 11 is read off as "two 1s" or 21.
// 21 is read off as "one 2, then one 1" or 1211.
// Given an integer n, generate the nth term of the count-and-say sequence.
//
// Note: Each term of the sequence of integers will be represented as a string.
//
// Example 1:
//
// Input: 1
// Output: "1"
// Example 2:
//
// Input: 4
// Output: "1211"
let countAndSay = (input)=>{
  //change number to string
  //split string
  //sort high to low

  input = input.toString().split("").sort().reverse()
  let current
  let countCurrent= 0
  let solutionValue=[]
  while(input.length > 0){
    let current = input[0]
    countCurrent++
    //count duplicates of input[0]
    for(let i=1;i<input.length;i++){
      if(input[i]!= current) { i = input.length}  //value not equal current
      else{countCurrent++}
    }//for
    //  push count of duplicates, and character value of input[0] to new array
    solutionValue.push(countCurrent)
    solutionValue.push(current)
    //  splice off all duplicates + inut[0]
    input.splice(0,countCurrent)
    // repeat until inpt length is 0
    countCurrent = 0 //reset for next loop
  }//while
  //join new array and parse int
  //return
  return input
}

console.log(countAndSay(1))
console.log(countAndSay(11))
console.log(countAndSay(21))
console.log(countAndSay(2133))
