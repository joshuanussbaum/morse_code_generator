public class Dictionary
{
	// Make Two arrays - one of letters and numbers, one of morse code symbols. 
	["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "&", "'", "@", "(", ")", ":", ",", "=", "!", ".", "-", "+", "\"", "?", "/", " "] @=> string characters[];
	[".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..", "-----", ".----", "..---", "...--", "....-", ".....", "-....", "--...", "---..", "----.", ".-...", ".----.", ".--.-.", "-.--.-", "-.--.", "---...", "--..--", "-...-", "-.-.--", ".-.-.-", "-....-", ".-.-.", ".-..-.", "..--..", "-..-.", " "] @=> string morseCode[];
	string dictionary[51];
	// TODO: Add in the functionality of the following characters: ä, á, å, Ch, é, ñ, ö, ü
	
	// 

	// Then, iterate through all the items, and associate each index of array 1 to the morse code
	// of array 2. 
	for(0 => int i; i < characters.cap(); i++)
	{
		morseCode[i] => dictionary[characters[i]];
	}
	// After that, create a function that returns a string based on array two index array one value

	fun string translateLetters(string letter)
	{
		//<<<letter>>>;
		if(letter == "_")
		{
			return "_";
		}
		return dictionary[letter];
	}

	fun int isInDictionary(string entry)
	{
		0 => int failCount;
		for(0 => int i; i < entry.length(); i++)
		{
			<<<dictionary[entry.substring(i,1)]>>>;
			if(dictionary[entry.substring(i,1)] == null)
			{
				1 +=> failCount;
			}
		}
		if(failCount == 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
