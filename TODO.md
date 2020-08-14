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