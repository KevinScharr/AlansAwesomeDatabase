create or replace function PreReqsFor
(
cursNum Int
)
returns int
as $$
declare 
   preReq int;
   resultSet refcursor;
Begin
   Open resultSet for
     select preReqNum
     from Prerequisites
     where courseNum = cursNum;
   return resultSet;
End;
$$
Language PLPGSQL;

select PreReqsFor(499);



create or replace function isPreReqsFor
(
preReq Int
)
returns int
as $$
declare 
   cursNum int;
   resultSet refcursor;
Begin
   Open resultSet for
     select courseNum
     from Prerequisites
     where preReqNum = preReq;
   return resultSet;
End;
$$
Language PLPGSQL;

select isPreReqsFor(308);