Project List
========

Numbers
---------

**Find PI to the Nth Digit** – Enter a number and have the program generate PI up to that many decimal places. Keep a limit to how far the program will go.

**Fibonacci Sequence** – Enter a number and have the program generate the Fibonacci sequence to that number or to the Nth number.

**Prime Factorization** – Have the user enter a number and find all Prime Factors (if there are any) and display them.

**Next Prime Number** – Have the program find prime numbers until the user chooses to stop asking for the next one.

**Find Cost of Tile to Cover W x H Floor** – Calculate the total cost of tile it would take to cover a floor plan of width and height, using a cost entered by the user.

**Mortgage Calculator** – Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given interest rate. Also figure out how long it will take the user to pay back the loan.

**Change Return Program** – The user enters a cost and then the amount of money given. The program will figure out the change and the number of quarters, dimes, nickels, pennies needed for the change.

**Binary to Decimal and Back Converter** – Develop a converter to convert a decimal number to binary or a binary number to its decimal equivalent.

**Calculator** – A simple calculator to do basic operators. Make it a scientific calculator for added complexity.

**Unit Converter (temp, currency, volume, mass and more)** – Converts various units between one another. The user enters the type of unit being entered, the type of unit they want to convert to and then the value. The program will then make the conversion.

**Alarm Clock** – A simple clock where it plays a sound after X number of minutes/seconds or at a particular time.

**Distance Between Two Cities** – Calculates the distance between two cities and allows the user to specify a unit of distance. This program may require finding coordinates for the cities like latitude and longitude.

**Credit Card Validator** – Takes in a credit card number from a common credit card vendor (Visa, MasterCard, American Express, Discoverer) and validates it to make sure that it is a valid number (look into how credit cards use a checksum).

**Tax Calculator** – Asks the user to enter a cost and either a country or state tax. It then returns the tax plus the total cost with tax.

**Dijkstra’s Algorithm** – Create a program that finds the shortest path through a graph using its edges.

Text
---------

**Reverse a String** – Enter a string and the program will reverse it and print it out.

**Pig Latin** – Pig Latin is a game of alterations played on the English language game. To create the Pig Latin form of an English word the initial consonant sound is transposed to the end of the word and an ay is affixed (Ex.: "banana" would yield anana-bay). Read Wikipedia for more information on rules.

**Count Vowels** – Enter a string and the program counts the number of vowels in the text. For added complexity have it report a sum of each vowel found.

**Check if Palindrome** – Checks if the string entered by the user is a palindrome. That is that it reads the same forwards as backwards like “racecar”

**Count Words in a String** – Counts the number of individual words in a string. For added complexity read these strings in from a text file and generate a summary.

**RSS Feed Creator** – A program which can read in text from other sources and put it in RSS or Atom news format for syndication.

**Quote Tracker (market symbols etc)** – A program which can go out and check the current value of stocks for a list of symbols entered by the user. The user can set how often the stocks are checked and the program can show green up and red down arrows to show which direction the stock value has moved.

**Vigenere / Vernam / Ceasar Ciphers** – Functions for encrypting and decrypting data messages. Then send them to a friend.

**Text to HTML Generator** – Converts text files into web HTML files and stylizes them. Great for making online documentation of standard text documentation.

**CD Key Generator** – Generates a unique key for your applications to use based on some arbitrary algorithm that you can specify. Great for software developers looking to make shareware that can be activated.

**Regex Query Tool** – A tool that allows the user to enter a text string and then enter a regex pattern. It will run the regular expression against the source text and return any matches or flag errors in the regular expression.

Networking
---------

**FTP Program** – A file transfer program which can transfer files back and forth from a remote web sever.

**Get Atomic Time from Internet Clock** – This program will get the true atomic time from an atomic time clock on the Internet. There are various clocks across the world. Do a search for a list of them.

**Fetch Current Weather** – Get the current weather for a given zip/postal code.

**Port Scanner** – Enter an IP address and a port range where the program will then attempt to find open ports on the given computer by connecting to each of them. On any successful connections mark the port as open.

**Mail Checker (POP3 / IMAP)** – The user enters various account information include web server and IP, protocol type (POP3 or IMAP) and the application will check for email on several accounts at a given interval.

**Packet Sniffer** – A utility program that will read packets coming in and out of the machine along with related information like destination and payload size.

**Country from IP Lookup** – Enter an IP address and find the country that IP is registered in.

**Whois Search Tool** – Enter an IP or host address and have it look it up through whois and return the results to you.

**Site Checker with Time Scheduling** – An application that attempts to connect to a website or server every so many minutes or a given time and check if it is up. If it is down, it will notify you by email or by posting a notice on screen.

**Small Web Server** – A simple web server that can serve HTML files. Make it multi-threaded with several different scheduling policies (FIFO, HPSC, HPDC, SFF). See [this assignment](http://pages.cs.wisc.edu/~dusseau/Classes/CS537-F04/Projects/P2/) for details.

Classes
---------

**Library Catalog** – Create a book class with a title, page count, ISBN and whether or not it is checked out or not. Manage a collection of various books and allow the user to check out books or return books. For added complexity generate a report of those books overdue and any fees. Also allow users to put books on reserve.

**Class to Handle Large Numbers** – We know that the basic data types like integer, long, double, and floats only go so far. Create a class that can manage extremely large numbers like those used in space exploration.

**Chart Making Class / API** – Create a class, or a set of classes, that generates bar charts, pie charts, histograms, and scatter plot charts.

**Shape Area and Perimeter Classes** – Create an abstract class called “Shape” and then inherit from it other shapes like diamond, rectangle, circle, triangle etc. Then have each class override the area and perimeter functionality to handle each shape type.

**Matrix Class** – A class to manage matrices. Add, subtract and multiple matrices.

**Josephus Problem** – Create a program which links together various node objects and then every Nth object is removed until you have one object left. This last object is the sole survivor. Look it up on Google under “Josephus Algorithm”

**Family Tree Creator** – Create a class called “Person” which will have a name, when they were born and when (and if) they died. Allow the user to create these Person classes and put them into a family tree structure. Print out the tree to the screen.

Threading
---------

**Create A Progress Bar for Downloads** – Create a progress bar for applications that can keep track of a download in progress. The progress bar will be on a separate thread and will communicate with the main thread using delegates.

**Download Manager** – Allow your program to download various files and each one is downloading in the background on a separate thread. The main thread will keep track of the other thread’s progress and notify the user when downloads are completed.

**Bulk Thumbnail Creator** – Picture processing can take a bit of time for some transformations. Especially if the image is large. Create an image program which can take hundreds of images and converts them to a specified size in the background thread while you do other things. For added complexity, have one thread handling re-sizing, have another bulk renaming of thumbnails etc.

Web
---------

**Web Browser with Tabs** – Create a small web browser that allows you to navigate the web and contains tabs which can be used to navigate to multiple web pages at once. For simplicity don’t worry about executing Javascript or other client side code.

**Page Scraper** – Create an application which connects to a site and pulls out all links, or images, and saves them to a list. For added complexity, organize the indexed content and don’t allow duplicates. Have it put the results into an easily searchable index file.

**Bandwidth Monitor** – A small utility program that tracks how much data you have uploaded and downloaded from the net during the course of your current online session. See if you can find out what periods of the day you use more and less and generate a report or graph that shows it.

**Password Safe** – A program which keeps track of passwords for sites or applications and encrypts them with a key so that no one can read them.

**CAPTCHA Maker** – Ever see those images with letters a numbers when you signup for a service and then asks you to enter what you see? It keeps web bots from automatically signing up and spamming. Try creating one yourself for online forms. If you use PHP, take a look at the image functions of GD.

Files
---------

**Quiz Maker** – Make an application which takes various questions form a file, picked randomly, and puts together a quiz for students. Each quiz can be different and then reads a key to grade the quizzes.

**Sort File Records Utility** – Reads a file of records, sorts them, and then writes them back to the file. Allow the user to choose various sort style and sorting based on a particular field.

**Create Zip File Maker** – The user enters various files from different directories and maybe even another computer on the network and the program transfers them and zips them up into a zip file. For added complexity, apply actual compression to the files.

**PDF Generator** – An application which can read in a text file, html file or some other file and generates a PDF file out of it. Great for a web based service where the user uploads the file and the program returns a PDF of the file.

**Bulk Renamer and Organizer** – This program will take a series of files and renames them with a specific filename filter entered by the user. For instance if the user enters myimage###.jpg it will rename all files with a “minimum” of three numbers like “myimage001.jpg”, “myimage145.jpg” or even “myimage1987.jpg” since 1987 has at least three numbers.

**Mp3 Tagger** – Modify and add ID3v1 tags to MP3 files. See if you can also add in the album art into the MP3 file’s header as well as other ID3v2 tags.

**Log File Maker** – Make an application which logs various statistics in response to given events. This can be something that logs what an application does, what the system is doing, when something like a file changes etc.

**File Copy Utility** – Create a utility that can do bulk file copying and backups of other files.

**Code Snippet Manager** – Another utility program that allows coders to put in functions, classes or other tidbits to save for use later. Organized by the type of snippet or language the coder can quickly look up code. For extra practice try adding syntax highlighting based on the language.

**Versioning Manager** – Create your own versioning system for code files. Users are forced to check out items and lock items during reading and writing so that a group of programmers are not accidentally overwriting code files on one another.

Databases
---------

**SQL Query Analyzer** – A utility application which a user can enter a query and have it run against a local database and look for ways to make it more efficient.

**Report Generator** – Create a utility that generates a report based on some tables in a database. Generates a sales reports based on the order/order details tables or sums up the days current database activity.

**Database Backup Script Maker** – A program which reads a database’s objects, relationships, records and stored procedures and creates a .sql file which can then be imported into another database or kept as a backup file to rebuild the database with.

**Event Scheduler and Calendar** – Make an application which allows the user to enter a date and time of an event, event notes and then schedule those events on a calendar. The user can then browse the calendar or search the calendar for specific events. For added complexity, allow the application to create reoccurrence events that reoccur every day, week, month, year etc.

**Address Book** – Keep track of various contacts, their numbers, emails and little notes about them like a Rolodex in the database. For extra complexity, allow the user to connect to a website publish their address book based on specific options the user has set.

**Entity Relationship Diagram (ERD) Creator** – A program that allows the user to put together ERD diagram and save it or have it generate some basic SQL syntax to give them a jump start.

**Database Translation (MySQL  SQL Server)** – A simple utility that reads in from one database and constructs SQL compliant with another database. Then saves that to another database. One popular transition would be to and from MySQL server for databases like SQL Server and Oracle.

Graphics and Multimedia
---------

**Import Picture and Save as Grayscale** – A utility that sucks the color right out of an image and saves it. You could add more including adjusting contrast, colorizing and more for added complexity.

**Mp3 Player (and Other Formats)** – A simple program for playing your favorite music files. For extra complexity see if you can add in playlists and an equalizer.

**Bulk Picture Manipulator** – This program will take in a directory of pictures and apply a certain effect to them whether it be reducing color count, changing its format, or alter file attributes. For something extra try to see if you can also create a system to tag them.

**YouTube Downloader** – A program which can download videos to your hard drive from youtube.com. Save the files in various formats including FLV and AVI.

**Screen Capture Program** – Make a utility that will simply capture a frame from your web cam. For added complexity see if you can also build in emailing functionality.

**MP3 to Wav Converter** – MP3 is essentially compressed wav format. See if you can translate it back into wav so that some other sound editing programs can work with the wav file itself. Keep in mind that 1 MB of MP3 is relative 10MB wav.

System
---------

**Memory allocator** - Implement your own malloc, calloc, realloc and free functions.

**File System** - A simple and slow file system. See [this assignment](http://pages.cs.wisc.edu/~dusseau/Classes/CS537-F04/Projects/P4/) for details.

**Shell** - Implement a command line interpreter or shell. The shell should operate in this basic way: when you type in a command (in response to its prompt), the shell creates a child process that executes the command you entered and then prompts for more user input when it has finished. See [this assignment](http://pages.cs.wisc.edu/~dusseau/Classes/CS537-F04/Projects/P1/) for details.
