# TODOS - a totally not comprehensive list of things that needs to be implemented  

HIGH PRIORITY:  
* Sanitize user entry - handle code injection, foreign characters, and other complications.  
* Proper Farnsworth Timing - currently speed variables are arbitrary. Align with [this documentation](https://morsecode.world/international/timing.html)  
* GUI - maybe coded in JS or Go + HTML? Simple user facing web app.


MEDIUM PRIORITY:  
* Reverse Translation - using UANA, take a file and deconstruct the morse code. EXPLANATION BELOW  
* Special Character Support - add ä, á, å, Ch, é, ñ, ö, and ü to morse code library  


LOW PRIORITY:  
* Better Variable Naming - coming up with clearer implementation across files for variables/functions  
* Algorithm Optimization - everything works, but it could definitely be cleaner. ASCII implementation is weak, and I don't like how many nested if statements are in mcg.ck. This shouldn't be a problem for individual case use, but I can see this breaking very quickly.  



# REVERSE TRANSLATION IDEAS:  
The algorithm should go something like this:  
* Take in an audio file. Maybe live, more likely upload wav/aiff/mp3.  
* "Read" the file - play through it, count the distance between each beep.
* If there is a silence longer than characterSpace length, consider the previous beeps part of one "word".  
* Translate each morse beep into a Dit or Dah (. or -) based on length, and look up the letter that corresponds to the combination of Dits and Dahs in the word.  
* Store the translated character in a string, then continue the process for each successive character space.  
* If there is a silence longer than spaceBar length, add a " " to the string.  
* Once you have reached the end of the file, print out the message to the console.  
* ALTERNATIVE: SAVE THE MESSAGE TO A TEXT FILE (HOW DO U DO THIS IN CHUCK????)