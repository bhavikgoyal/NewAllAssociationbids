-- These are  the  all  RolesId 
	--Super Admin     ----  ffa1912b - d120 - 443e-a411 - a762698bbf61
--  Organization Admin	----  ffa1913b - d130 - 443e-a412 - a762698bbf62
	--Players	   ------     ffa1914b - d140 - 443e-a413 - a762698bbf63
---Room Admin	   -----         ffa1915b - d150 - 443e-a414 - a762698bbf64


---NOTE-:  you need  to  change  ID ,  username ,  Email , EveryTime when  you  add any  Record.
Go
declare
@id nvarchar(max) =  '3abdnew01s-c4f7-4e06-b378-8b80c7ba66db',
@username nvarchar(max) = 'testnew01',
@NormalizedUserName nvarchar(max) = 'testnew01',
@Email nvarchar(max) = 'testmain01@gmail.com',
@NormalizedEmail nvarchar(max) = 'test1111',
@EmailConfirmed bit = 0,
@PasswordHash nvarchar(max) = 'test10101',
@SecurityStamp nvarchar(max) = 'test11010',
@ConcurrencyStamp nvarchar(max) = 'test1101',
@PhoneNumber nvarchar(max) = 'test1101',
@PhoneNumberConfirmed bit = 0,
@TwoFactorEnabled bit =0,
@LockoutEnd datetimeoffset = null,
@LockoutEnabled bit = 0,
@AccessFailedCount int = 0,
@FirstName nvarchar(max) = 'tes01t',
@LastName nvarchar(max) = 'test02',
@Gender nvarchar(max) = 'M',
@BirthDate datetime= getdate(),
@StreetAddress nvarchar(max) = 'teststreet',
@City nvarchar(max) = 'testcity',
@State nvarchar(max) = 'testate',
@Zip nvarchar(max) = '01055',
@Country nvarchar(max) = 'BEL',
@Phone nvarchar(max) = '0191-10404-202'

declare  @lastUserID nvarchar(max) 
INSERT INTO [dbo].[AspNetUsers]
           (Id,
           [UserName]
           ,[NormalizedUserName]
           ,[Email]
           ,[NormalizedEmail]
           ,[EmailConfirmed]
           ,[PasswordHash]
           ,[SecurityStamp]
           ,[ConcurrencyStamp]
           ,[PhoneNumber]
           ,[PhoneNumberConfirmed]
           ,[TwoFactorEnabled]
           ,[LockoutEnd]
           ,[LockoutEnabled]
           ,[AccessFailedCount]
           ,[FirstName]
           ,[LastName]
           ,[Gender]
           ,[BirthDate]
           ,[StreetAddress]
           ,[City]
           ,[State]
           ,[Zip]
           ,[Country]
           ,[Phone])
     VALUES
           (@id,@username,@NormalizedUserName,@Email,@NormalizedEmail,@EmailConfirmed,@PasswordHash,@SecurityStamp,@ConcurrencyStamp,
		   @PhoneNumber,@PhoneNumberConfirmed,@TwoFactorEnabled,@LockoutEnd,@LockoutEnabled,@AccessFailedCount,@FirstName,
		   @LastName,@Gender,@BirthDate,@StreetAddress,@City,@State,@Zip,@Country,@Phone
		   )

	    select  @lastUserID = (select  Id from  AspNetUsers	  where  Email =  @Email)
		 
		 
		 INSERT INTO [dbo].[AspNetUserRoles]
           ([UserId]
           ,[RoleId])
            VALUES
           (@lastUserID,'ffa1914b - d140 - 443e-a413 - a762698bbf63')



Go
