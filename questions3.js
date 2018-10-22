// You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
//
// Example 1:
//
// Input: coins = [1, 2, 5], amount = 11
// Output: 3
// Explanation: 11 = 5 + 5 + 1
// Example 2:
//
// Input: coins = [2], amount = 3
// Output: -1
// Note:
// You may assume that you have an infinite number of each kind of coin.
let coinsAddUpToAmount = (coinInstance,amount)=>{
	let sum = 0;
	for(i = 0; i < coinInstance.length; i++){
		sum+= coinInstance[i]
	}
	if(sum == amount){return true}
	return false
}

var coinChange = function(coins, amount) {
	let possibleCombos = []
	coins = coins.sort()
	let current = coins.length -1
	//since we want minimum ,  we should start with largest number
	// and see how many of that number are in amount then move down
	while(coins.length > 0){
		current = coins.length -1
		let coinInstance = []
		let currentAmount = amount
		while(current >= 0){
			let howManyOfCurrentCoins = Math.floor(currentAmount / coins[current])
			currentAmount = currentAmount - (coins[current] * howManyOfCurrentCoins)
			while(howManyOfCurrentCoins > 0) { coinInstance.push(coins[current]); howManyOfCurrentCoins--;}
			current--;
		}//inner while
		// check if coinInstance is equal to amount
		if (coinsAddUpToAmount(coinInstance,amount)){
			//if true then push, else dont
			possibleCombos.push(coinInstance)
		}
		coins.pop()
	}//while
	// console.log(Math.floor(amount / coins[current])	)
	let lowest = possibleCombos.length-1
	for(i=0;i<possibleCombos.length;i++){
		if(possibleCombos[i].length < possibleCombos[lowest].length){lowest = i}
	}
	console.log(possibleCombos)
	if(possibleCombos.length < 1){return -1}
	return possibleCombos[lowest].length
	// return [coins,current]
};

console.log(coinChange([1,5,2],11))
console.log(coinChange([2],3))

//***********************************************************************************
//
// let canSelfDivide = (num)=>{
// 	let numToString = num.toString().split("")
// 	// numToString.forEach((n)=>{
// 	for(let i=0; i < numToString.length; i++){
// 		if((num % numToString[i] ) != 0)
// 		{
// 			return false
// 		}
// 	}
// 	return true
// 	// return num
// }
//
// var selfDividingNumbers = function(left, right) {
//     let selfDividing = []
//     for(let i = left; i <= right; i++)
//     {
//     	// console.log(canSelfDivide(i))
//     	if(canSelfDivide(i)) { selfDividing.push(i)}
//
//     }
//
//     // return "test"
//     return selfDividing
// };
//
// // A self-dividing number is a number that is divisible by every digit it contains.
//
// // For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
//
// // Also, a self-dividing number is not allowed to contain the digit zero.
//
// // Given a lower and upper number bound, output a list of every possible self dividing number,
// // including the bounds if possible.
//
// // Example 1:
// // Input:
// let left = 1, right = 22
// console.log(selfDividingNumbers(left,right))
// // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
// // Note:
//
// // The boundaries of each input argument are 1 <= left <= right <= 10000.
//


// function get_list_of_characters(words){
// 	let table = {}
// 	for(let i=0;i < words.length; i++)
// 	{
// 		for(let j=0;j<words[i].length;j++)
// 		{
// 			if (!(words[i][j] in table))
// 			{
// 				// console.log(words[i][j])
// 				table[words[i][j]] = 1
// 			}
// 			else
// 			{
// 				table[words[i][j]] += 1
// 			}
// 		}
// 	}
// 	// return "test"
// 	return table
// }

// function word_can_be_made(word,table){
// 	word = word.split("")
// 	word.pop()
// 	// console.log(word)
// 	let count = {}
// 	word.forEach((char)=>{count[char] = (count[char] || 0)+1})
// 	// console.log(count)
// 	for (const [key, value] of Object.entries(count)) {
//   		// console.log(key, value);
//   		if((table[key] -count[key]) < 1)
//   		{
//   			return false
//   		}
// 	}

// 	return true
// }

// function longest_word(words){
//  // return   "longest"
//  let table = get_list_of_characters(words)
//  let longest = ""
//  for(i=0;i<words.length;i++)
//  {
//  	if (word_can_be_made(words[i],table)) {
//  		if(words[i] > longest)
//  		{
//  			 		longest = words[i]
//  		}
//  	}
//  	// console.log(word_can_be_made(words[i],table))
//  }


//  // return table
//  return longest
// }
// // # end

// // # Given a list of strings words representing an English Dictionary, find the longest word in words that can be built
// //  # one character at a time by other words in words.
// //  # If there is more than one possible answer, return the longest word with the smallest lexicographical order.

// // # If there is no answer, return the empty string.
// // # Example 1:
// // # Input:
// words1 = ["w","wo","wor","worl", "world"]
// console.log(longest_word(words1))
// words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
// console.log(longest_word(words))
// // # Output: "world"
// // # Explanation:
// // # The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".
// // # Example 2:
// // # Input:
// // # words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
// // # Output: "apple"
// // # Explanation:
// // # Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically
// // # smaller than "apply".
// // # Note:

// // # All the strings in the input will only contain lowercase letters.
// // # The length of words will be in the range [1, 1000].
// // # The length of words[i] will be in the range [1, 30].
