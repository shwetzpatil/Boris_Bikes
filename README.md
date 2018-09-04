## Boris_Bikes ##

#Contributers#
Robbie Campbell
Shweta Patil


Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

To help structure your work, here are 22 challenges. They all build on one another. They require you to research things, to get stuck, and to find your own solutions. This is on purpose. A developer is a 'knowledge worker' - someone who will spend the majority of their time researching and learning how to solve problems. It'll suck for a bit, but with practice, you will get faster: and there's no better feeling than finding the answer to a problem that's been standing in your way for hours.

##2. From User Stories to a Domain Model##
Objects describe the objects within the system, and Messages describe how those objects interact. We call these systems Domain Models

| Sr.No | Nouns | Verbs |
| --- | --- | --- | --- |
| Example 1 | Person, Bike, Docking station | Use, Release|
| Example 2 | Person,Bike |Use, Work|

| objects | Messages |
| --- | --- |
| Person |  |
| Bike | Use |
| Docking station | Release bike |

| objects | Messages |
| --- | --- |
| Person |  |
| Bike | Working? |
| Docking station | Release bike |


1.|Person| --Use--> |Docking station| --Release Bike--> |Bike|

2.|person| --Use--> |Bike| <--Working?--> <--false/True--> |Docking Station| --Release Bike-->|Boris_Bikes|

##4. Errors are good ##

Error received:

Traceback (most recent call last):
        2: from /Users/shwetapatil/.rvm/rubies/ruby-2.5.1/bin/irb:11:i<main>
        1: from (irb):1
NameError (uninitialized constant DockingStation)

Type of error: uninitialized constant

error file path: /Users/shwetapatil/.rvm/rubies/ruby-2.5.1/bin/irb:11:i<main>

Error line number: 1

The error appears because the constant is not part of any pre defined Ruby class.

To solve the error we can change the constant to a string.
