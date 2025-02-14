/*
    File Author: Nicholas S. Blits
    File Version: 1.0.5

    Description: This file is a collection of sample SQL queries a user could run on a database. These queries depend on specific elements that originate from the Teams.csv file found in this project.
*/

--Standard Select query
SELECT * FROM dbo.Teams; --Output: All rows and columns of the Teams Table (from Teams.csv)

--Select query With a Constraint on the Team's Ranking
SELECT * FROM dbo.Teams WHERE dbo.Teams.Ranking <= 10; --Outputs only the top 10 teams in the League

--Create a new Table for Team Managers
--Each Manager has an ID Number (stored as an Integer), a first name, a last name (stored as 2 separate Strings), a phone number (also stored as a String), and a team code for the team they manage (stored as an Integer)
CREATE TABLE Managers(int Manager_ID, String Manager_First_Name, String Manager_Last_Name, String Manager_Phone_Number, int Team_Code);

--Creating 20 different Managers and adding them to the Managers Table
INSERT INTO dbo.Managers VALUES(1, "Paul", "Gabriels", "512-344-2958", 5); 
INSERT INTO dbo.Managers VALUES(2, "Amberlynn", "Hollands", "518-675-9473", 8); 
INSERT INTO dbo.Managers VALUES(3, "Cindy", "Woodrow", "916-614-5181", 4); 
INSERT INTO dbo.Managers VALUES(4, "Jewel", "Wilds", "907-473-8267", 2);
INSERT INTO dbo.Managers VALUES(5, "Netta", "Paden", "360-518-1131", 6);
INSERT INTO dbo.Managers VALUES(6, "Braeden", "Hobbs", "470-787-7908", 3);
INSERT INTO dbo.Managers VALUES(7, "Nicholas", "Blits", "217-938-6525", 1);
INSERT INTO dbo.Managers VALUES(8, "Jarvis", "Evelyn", "602-748-4689", 9);
INSERT INTO dbo.Managers VALUES(9, "Keri", "Elmer", "225-229-0740", 7);
INSERT INTO dbo.Managers VALUES(10, "Orville", "Frost", "502-731-6044", 12);
INSERT INTO dbo.Managers VALUES(11, "Lois", "Abbey", "303-901-6122", 10);
INSERT INTO dbo.Managers VALUES(12, "Wilbur", "Ryland", "617-412-4596", 11);
INSERT INTO dbo.Managers VALUES(13, "Holly", "Siddall", "796-765-2718", 14);
INSERT INTO dbo.Managers VALUES(14, "Caris", "Flower", "651-881-1742", 15);
INSERT INTO dbo.Managers VALUES(15, "Kyra", "Hurst", "785-636-0080", 13);
INSERT INTO dbo.Managers VALUES(16, "Madalyn", "Cross", "971-457-8496", 17);
INSERT INTO dbo.Managers VALUES(17, "Maralyn", "Swift", "608-975-2176", 19);
INSERT INTO dbo.Managers VALUES(18, "Reilly", "Garrett", "723-742-8584", 16);
INSERT INTO dbo.Managers VALUES(19, "Ferne", "Stringer", "385-991-8960", 18);
INSERT INTO dbo.Managers VALUES(20, "Brooke", "Hope", "686-660-4054", 20);

--Join query to show the information of the Manager for the top 10 Teams in the League
SELECT dbo.Teams.Ranking, * FROM dbo.Teams JOIN dbo.Managers ON dbo.Teams.Manager_ID = dbo.Managers.Manager_ID;