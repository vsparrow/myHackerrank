function get_list_of_characters(words){
	let table = {}
	for(let i=0;i < words.length; i++)
	{
		for(let j=0;j<words[i].length;j++)
		{
			if (!(words[i][j] in table))
			{
				console.log(words[i][j])
				table[words[i][j]] = 1
			}
			else
			{
				table[words[i][j]] += 1
			}
		}
	}
	// return "test"
	return table
}
 
function longest_word(words){
 // return   "longest"
 return get_list_of_characters(words)
}
// # end

// # Given a list of strings words representing an English Dictionary, find the longest word in words that can be built
//  # one character at a time by other words in words. 
//  # If there is more than one possible answer, return the longest word with the smallest lexicographical order.

// # If there is no answer, return the empty string.
// # Example 1:
// # Input: 
words1 = ["w","wo","wor","worl", "world"]
console.log(longest_word(words1))
words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
console.log(longest_word(words))
// # Output: "world"
// # Explanation: 
// # The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".
// # Example 2:
// # Input: 
// # words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
// # Output: "apple"
// # Explanation: 
// # Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically 
// # smaller than "apply".
// # Note:

// # All the strings in the input will only contain lowercase letters.
// # The length of words will be in the range [1, 1000].
// # The length of words[i] will be in the range [1, 30].

