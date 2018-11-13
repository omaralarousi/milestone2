GO
CREATE PROC Original_Content_Search
@typename varchar(50),
@categoryname carhar(50)
AS
IF @typename IS NOT NULL 
SELECT C.*
FROM Original_Content C inner join Content C1 ON C.ID=C1.ID
WHERE C.filter_status=1 AND C.review_status =1 AND C1.[type]=@typename
ELSE IF @categoryname IS NOT NULL
SELECT C.*
FROM Original_Content C inner join Content C1 ON C.ID=C1.ID
WHERE C.filter_status=1 AND C.review_status =1 AND C1.category_type=@categoryname

GO
CREATE PROC Contributor_Search 
@fullname varchar(50)
AS SELECT C.* 
FROM Contributor C inner join [User] U ON C.ID=U.ID
WHERE concat(U.first_name,' ',u.middle_name,' ', U.last_name)=@fullname