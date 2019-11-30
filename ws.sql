CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL , 
    [first] VARCHAR(50) NULL, 
    [last] VARCHAR(50) NULL, 
    [email] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(50) NULL, 
    [Birth Date:] DATE NULL, 
    [occupation] VARCHAR(50) NULL, 
    [country] VARCHAR(50) NULL, 
    [institution] VARCHAR(50) NULL, 
    [about] VARCHAR(MAX) NULL, 
    [father] VARCHAR(50) NULL, 
    [phone] INT NULL, 
    [birthplace] VARCHAR(50) NULL, 
    [favfood] VARCHAR(50) NULL, 
    [favplace] VARCHAR(50) NULL, 
    [propic] IMAGE NULL, 
    PRIMARY KEY ([email])
)
