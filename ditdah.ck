public class MorseBeep
{
	SinOsc s => dac;
	550 => s.freq;
	60::ms => dur dit;
	dit * 3 => dur dah;
	(dah * 2) + dit => dur space;
	0.0 => float silence;
	0.5 => float play;

	// Write function for "Play Dit"
	fun void playDit()
	{
		play => s.gain;
		dit => now;
	}
	// Write function for "Play Dah"
	fun void playDah()
	{
		play => s.gain;
		dah => now;
	}
	// Write function for "Play Morse Space"
	fun void morseSpace()
	{
		silence => s.gain;
		dit => now;
	}
	// Write function for "Play Character Space"
	fun void characterSpace()
	{
		silence => s.gain;
		dit => now;
	}
	// Write funciton for "Play Space Character"
	fun void spaceBar()
	{
		silence => s.gain;
		space=> now;
	}
}