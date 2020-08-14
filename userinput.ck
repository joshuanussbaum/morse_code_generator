public class UserInput
{
	KBHit kb;

	["NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "LF", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", "NULL", " ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~", "DEL"] @=> string ascii[];
	// TODO: MAKE THIS MORE COMPREHENSIVE 

	fun string enterText()
	{
		1 => int notFinished;
		string result;
		while(notFinished)
		{
			kb => now;

			while(kb.more())
			{
				kb.getchar() => int asciiValue;
				ascii[asciiValue] => string entry;
				if(entry == "LF")
				{
					0 => notFinished;
					<<<"Finished Entry">>>;
				}
				else if(ascii[asciiValue] != "NULL")
				{
					if(entry == "DEL" && result.length() > 0)
					{
						<<<"Deleting!">>>;
						result.erase(result.length()-1, 1);
						<<<result>>>;
					}
					else
					{
						<<<"Adding: " + ascii[asciiValue]>>>;
						result + ascii[asciiValue] => result;
						<<<result>>>;
					}
				}
			}
		}
		//<<<result>>>;
		return result;
	}
}
