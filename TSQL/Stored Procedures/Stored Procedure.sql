CREATE procedure getFullnamesp (
    @firstname varchar(max),@lastname varchar(max)
)
 
AS
begin
    SELECT 
        first_name +','+last_name  as fullname
    FROM
        [V_Customer]
    WHERE
        first_name = @firstname and last_name=@lastname

end

CREATE procedure getViewTableSp  
AS
begin
    SELECT *
    FROM
        [V_Customer]


    
end

---insert

CREATE procedure InsertViewTableSp  
(
@First_Name varchar(max),
@Last_Name varchar(max),
@Country varchar(max)
)
AS
begin
  INSERT INTO [dbo].[V_Customer]
           ([First_Name]
           ,[Last_Name]
           ,[Country])
     VALUES (@First_Name,@Last_Name,@Country)
    
end

 --update  
 
			
	CREATE procedure UpdateViewTableSp  
(
@First_Name varchar(max),
@Update_first_Name varchar(max),
@Country varchar(max)
)
AS
begin
update [dbo].[V_Customer] set first_name=@Update_first_Name where first_name=@First_Name
    
end

