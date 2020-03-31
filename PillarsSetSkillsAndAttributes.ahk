/*
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


Companions I have encountered, copy/paste from here.
Sometimes you'll have to FindCharacter names if you've made changes to the party.

Companion_Aloth(Clone)_
Companion_Eder(Clone)_
Companion_GGP(Clone)_
Companion_Kana(Clone)_
Companion_Sagani(Clone)_
Companion_Caroc(Clone)_
Companion_Zahua(Clone)_
Companion_Maneha(Clone)_
Companion_Hiravias(Clone)_
Companion_Pallegina(Clone)_
*/

; CHANGE CHARACTER NAMES HERE!
; Make sure the names here match the CURRENT names of your party memebers or this will not work.
MainChar := "Player_New_Game(Clone)_0"
Companion1 := "Companion_Aloth(Clone)_1"
Companion2 := "Companion_Sagani(Clone)_2"
Companion3 := "Companion_GM(Clone)_3"
Companion4 := "Companion_Pallegina(Clone)_4"
Companion5 := "Companion_Hiravias(Clone)_5"

; Some things in the game only recognize 36 as a max stat, but others do go higher.
; I've found 100 to be quite hillarious, as you are a living god.
; Change these to change all stats and attributes to that level.
SkillLevel := 100
AttributeLevel := 100


; Don't mess with this stuff
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
consoleKey:= "``" ; The console is brought up with `, but you have to put `` for autohotkey.


#Y:: ; Runs everything below this whey you hit Windows key + Y
; I only chose Y because there isn't already a windows hotkey associated with it.

; The script seems more stable having this extra bit in the front. I have no idea why.
; This is how every skill and stat is done though, so I will comment it.
Send % "{" consoleKey " down}" ; Presses the console key and holds it down.
Sleep 50 ; Makes sure this key is held for at least 50ms, otherwise it won't be recognized.
Send % "{" consoleKey " up}" ; Releases the console key.
Sleep 500 ; Wait for the console to open and be ready to accept input.
Send {Enter} ; Sends the enter key.
Sleep 50 ; Slight wait before sending the command.
SSend % "Skill " MainChar " Mechanics " SkillLevel ; Sets the Mechanics skill to SkillLevel.
Send {Enter} ; Sends the enter key.
Sleep 50 ; Delays a bit before continuing on.

; I would love to have this all in a single function, but I couldn't get it to work reliably.
; So here we are doing everything line by line like savages. At least it works. ;-)

; Player Char
/*
 I am not setting the attributes, as they will stay for your main char, so no need to do it every time.
 At any point you can set an attribute for the main character with:
 AttributeScore Player_New_Game(Clone)_0 Attribute ##
 */
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " MainChar " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " MainChar " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " MainChar " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " MainChar " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " MainChar " Stealth " SkillLevel
Send {Enter}
Sleep 50


;Companion #1
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion1 " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion1 " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion1 " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion1 " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion1 " Stealth " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Might " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Constitution " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Dexterity " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Perception " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Intellect " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion1 " Resolve " AttributeLevel
Send {Enter}
Sleep 50

;Companion #2
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion2 " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion2 " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion2 " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion2 " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion2 " Stealth " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Might " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Constitution " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Dexterity " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Perception " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Intellect " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion2 " Resolve " AttributeLevel
Send {Enter}
Sleep 50

;Companion #3
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion3 " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion3 " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion3 " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion3 " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion3 " Stealth " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Might " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Constitution " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Dexterity " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Perception " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Intellect " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion3 " Resolve " AttributeLevel
Send {Enter}
Sleep 50

;Companion #4
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion4 " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion4 " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion4 " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion4 " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion4 " Stealth " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Might " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Constitution " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Dexterity " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Perception " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Intellect " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion4 " Resolve " AttributeLevel
Send {Enter}
Sleep 50

;Companion #5
Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion5 " Mechanics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion5 " Lore " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion5 " Survival " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion5 " Athletics " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "Skill " Companion5 " Stealth " SkillLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Might " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Constitution " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Dexterity " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Perception " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Intellect " AttributeLevel
Send {Enter}
Sleep 50

Send % "{" consoleKey " down}"
Sleep 50
Send % "{" consoleKey " up}"
Sleep 500
Send {Enter}
Sleep 50
Send % "AttributeScore " Companion5 " Resolve " AttributeLevel
Send {Enter}
Sleep 50

Return