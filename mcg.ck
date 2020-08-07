Dictionary dict;
MorseBeep ditdah;
UserInput entry;
dac => WvOut w => blackhole;
<<<"Please Name Your File: \n">>>;
entry.enterText() => string fileName;
<<<"Please Enter Your Message: \n">>>;
entry.enterText() => string toMorse;
<<<"Farnsworth On? Y/N: \n">>>;
entry.enterText() => string farnsworth;
0 => int farnResult;
if(farnsworth == "Y" || farnsworth == "y")
{
	1 => farnResult;
}
ditdah.farnsworthTiming(farnResult);
toMorse.upper() => toMorse;
w.wavFilename(fileName);
if(dict.isInDictionary(toMorse))
{
	for(0 => int i; i < toMorse.length(); i++)
	{
		dict.translateLetters(toMorse.substring(i,1)) => string morse;
		<<<morse>>>;
		if(morse == "_")
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
}
else
{
	<<<"Invalid entry! Please try again.">>>;
	1::ms => now;
}

/*
w.wavFilename("hello_morse");
"Hello, World!" => string toMorse;
toMorse.upper() => toMorse;
*/