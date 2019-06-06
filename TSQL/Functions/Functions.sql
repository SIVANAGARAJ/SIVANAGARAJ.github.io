--function
 
 --scalar

CREATE FUNCTION sales.udfNetSale(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END;

--table value
  
  CREATE FUNCTION getFullname (
    @firstname varchar(max),@lastname varchar(max)
)
RETURNS TABLE
AS
RETURN
    SELECT 
        first_name +','+last_name  as fullname
    FROM
        [V_Customer]
    WHERE
        first_name = @firstname and last_name=@lastname

		select * from getFullname('Mani','vasagam')  

		--table value without param

		CREATE FUNCTION getcustomerlist()
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM
        [V_Customer]

		 select * from getcustomerlist()



