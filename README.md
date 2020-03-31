# Pillars of Eternity Skills and Attributes
 
Written by Jimmie Rodgers
Released under public domain. Do what you will with this script!
It's shown as MIT License on GitHub, as that was the closest I coudld get to public domain, which this is.

This is a script written for Pillars of Eternity to set Skills and Attributes for your whole party.
Unfortunately PoE resets your characters anytime you re-load a save, or going back and forth between
new sections of the game, hence writting a script to re-do everything.

How to use it:
First you will need to download Autohotkey: https://www.autohotkey.com/

Once that is installed, you can simply run this AHK file. Anytime you press Windows Key + Y
it will start sending console commands, so be careful when you press it, as it takes nearly
a full minute to run. Also, try to be in a small area in the game, like a small house, your keep
or an inn. For some reason lots of the commands get missed if the area is particularly busy.

You will have to find out what your party member names are, and unfortunately they change whenever
you reload to move to a new section of the game. Really, just the # at the end changes, the rest
of the name sounds the same. The # is the position in the party that the character is in, and your
character is always 0. So for example Aloth is "Companion_Aloth(Clone)_1" when you first get him.
If you move him to the last position in the part and then reload the game he will now be know as
"Companion_Aloth(Clone)_5". If you don't reload, then he will keep #1.

If you ever need to know a name, you can open up the console and type "FindCharacter [NAME of character]".
Change the names in the "CHANGE CHARACTER NAMES HERE!" section. Simply make sure the companions below have
the right names, you are in a small area, and then the script should run fine.
