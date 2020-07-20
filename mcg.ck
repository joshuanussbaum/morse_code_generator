Dictionary dict;
MorseBeep ditdah;
dac => WvOut w => blackhole;
w.wavFilename("hello_morse");
"Hello, World!" => string test;
test.upper() => string test2;

for(0 => int i; i < test2.length(); i++)
{
	dict.translateLetters(test2.substring(i,1)) => string morse;
	<<<morse>>>;
	if(morse == "S")
	{
		ditdah.spaceBar();
		continue;
	}
	else if(morse.length() == 1)
	{
		if(morse == ".")
		{
			ditdah.playDit();
		}
		else
		{
			ditdah.playDah();
		}
		ditdah.morseSpace();
	}
	else
	{
		for(0 => int i; i < morse.length(); i++)
		{
			if(morse.substring(i,1) == ".")
			{
				ditdah.playDit();
			}
			else if(morse.substring(i,1) == "-")
			{
				ditdah.playDah();
			} 
			ditdah.morseSpace();
		}
	}
	ditdah.characterSpace();
}
w.closeFile();
1::ms => now;