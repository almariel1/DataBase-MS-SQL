select *															-- выборка
from Typography
where Requirements = 'none' AND Parameters = 'none'

--------------------------------------

select t.Types from Typography t union select g.Types from Grafic g union select m.Types from Multimedia m				-- выборка c использованием UNION
union select w.Types from Web w union select r.Types from Rest r 
order by Types

--------------------------------------

select g.Types, m.Types, w.Types, r.Types, t.Types								-- выборка с использованием JOIN
from Palettes s join Grafic g on g.tab_G = s.tab_G 
join Multimedia m on m.tab_M = s.tab_M
join Web w on w.tab_W = s.tab_W
join Rest r on r.tab_R = s.tab_R
join Typography t on t.tab_T = s.tab_T

--------------------------------------

select COUNT(*) Types														-- функция
from Typography
GO

select COUNT(*) Types
from Multimedia
GO

select COUNT(*) Types
from Web
GO

select COUNT(*) Types
from Grafic
GO

select COUNT(*) Types
from Rest
GO

--------------------------------------

create view smartchoice_Typography									-- представление 
as select Types, Programs, Formats
from Typography

create view smartchoice_Web
as select Types, Programs, Formats
from Web

create view smartchoice_Multimedia
as select Types, Programs, Formats
from Multimedia

create view smartchoice_Grafic
as select Types, Programs, Formats
from Grafic

create view smartchoice_Rest
as select Types, Programs, Formats
from Rest

--------------------------------------

create procedure DBO.Proc2 @Programs							-- хранимая процедура
 [nvarchar](30), @Formats [nvarchar](40)
AS
  SELECT * FROM [T_M].[dbo].[Grafic]
  WHERE Programs = @Programs AND Formats = @Formats
