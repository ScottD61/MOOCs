--version 1
DECLARE @myvar AS smallint = 20000
SELECT @myvar AS myVariable

--version 2 increase contents by 200000 bytes
SET @myvar = @myvar + 200000
--Msg 220, Level 16, State 1, Line 5 Arithmetic overflow error for data type smallint, value = 220000.

--version 3 change datatype to allow byte change
DECLARE @myvar1 AS int = 200000
SET @myvar1 = @myvar1 + 200000

--version 4
DECLARE @myvar AS smallint = 20000
SELECT @myvar AS myVariable
