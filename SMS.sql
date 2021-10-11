create database SMSonline

use SMSonline

create table Users(
	 User_Id int primary key identity(1,1), 
	 UserName nvarchar(50),
	 PassWord nvarchar(100),
	 Email nvarchar(50),
	 DOB Date,
	 Gender bit,
	 WorkStatus bit,
	 Address nvarchar(50),
)

create table Messages(
	Message_Id int primary key identity(1,1),
	User_Id int FOREIGN KEY REFERENCES Users(User_Id),
	Sender nvarchar(50),
	Receiver nvarchar(50),
	DateTime DateTime,
	MessageContent nvarchar(200),
)

create table Emoji(
	Emoji_Id int primary key identity(1,1),
	User_Sender int FOREIGN KEY REFERENCES Users(User_Id),
	User_Receiver int FOREIGN KEY REFERENCES Users(User_Id),
	Status bit,
)

Create table Friend(
	Friend_Id int primary key identity(1,1),
	FriendName nvarchar(50),
	UserFriend_Id int FOREIGN KEY REFERENCES Users(User_Id),
	User_Id int FOREIGN KEY REFERENCES Users(User_Id),

)