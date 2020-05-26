-- Create Youtube Channel table
CREATE TABLE YoutubeChannel(
    ChannelID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] varchar(128) NOT NULL,
	Category varchar(128) DEFAULT('Gaming'),
	ChannelIdentifier varchar(250) NOT NULL
)

-- Create Youtube Video table
CREATE TABLE YoutubeVideo(
	VideoID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Identifier varchar(100),
	ChannelID int NOT NULL FOREIGN KEY REFERENCES YoutubeChannel(ChannelID)
)

ALTER TABLE YoutubeVideo ADD Title varchar(100);
ALTER TABLE YoutubeVideo ALTER COLUMN Identifier varchar(11);