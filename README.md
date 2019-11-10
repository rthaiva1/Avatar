# Avatar
IOS application of a weapon store from a popular game World of Warcraft where the data is stored using Blockchain
This IOS application is a single view Application help the users have who are already in blockchain(authenticated users of the game) to buy weapons for their game characters through blockchain platform

Description:-
The starting page is more like a welcome page when you click on "Buy Weapons" it takes you to a table view where you get the list of weapons that are available for sale
Once a weapon is sold it cannot be brought again and status changes from "Available to sale!!" to "Sold" in the table view cell
Only valid users in the blockchain are allowed to participate in the sale if any other tries to participate he will get Invalid User alert
Also the application keeps track of the money spent by each user if doesn't have enough funds to buy the weapon alert will be displayed
Check blockchain Validity functionality ensures no have has tried to modify earlier transaction and do malicious activity
If there has been a hack an alert will be displayed

Blockchain working:-
Starting from a genesis block on each sale a new block is appended to the earlier block
Every block contains a hash of previous block that is how blockchain ensures that no data is corrupted or changed because if one changes all the blocks are no longer connected to each other

Idea:- Blockchain keeps a track of all the sales made by the players in the game and ensures no one uses the system for their personal benefits.
All future gaming platform have a huge scope in blockchain as it keeps data secured and makes the game fair to everyone

Future update: Include smart contracts and implement mining for the validation of transactions and give them reward
Implement Proof of Stake as consensus protocol

Note :-
All functionalities mentioned in the description are been implemented
Every player has some money at starting which he can spend.
The current Player in the blockchain are (case - sensitive):-
1.Player1
2.Player2
3.Player3
4.Player4
Any player apart from this if try to buy weapons will get an "Invalid user alert"
Money each player has :- "Player1": 900000,"Player2": 320000,"Player3": 9345400,"Player4": 234420
Total commits :- 15 commits

Days worked on :- 8 days

Day 1:- created repository and made a plan for the project

Day 2:- Started working on table view cell and table view controller layout

Day 3:- Connected it to table view cell code

Day 4:- Completed working code for table view cell and started with the table view controller part of code

Day 5:- Started testing with working data and started fixing issues on the data passing between controller and table cell and getting back from cell

Day 6:-  Created all images required for the application and successfully displayed the data for the working and started working on the home page

Day 7:- Wrote the classes and methods required for blockchain implementation

Day 8:- Fixed bugs and tested the application and implemented the blockchain validity check
