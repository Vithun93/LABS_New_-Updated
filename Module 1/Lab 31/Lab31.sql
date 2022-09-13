CREATE DATABASE Encoding;

USE Encoding;

CREATE TABLE example (TransactionID int, ClientID int, Profession varchar(100), Bank_dep varchar(100), Risk varchar(50), Number_of_credits int, Revenue int);

INSERT INTO encoding.example
VALUES
(1, 231, 'Self-employed', '009', 'High', 2, 30200),
(2, 765, 'students', '005', 'high', 3, 12700),
(3, 453, 'Horeca', '007', 'medium', 5, 89400),
(4, 231, 'self-employed', '009', 'high', 2, 30200),
(5, 892, 'finance', '003', 'low', 3, 740000);

-- View of the Table
SELECT * FROM example;

-- Ordinal Encoding for Risk column
select ClientID, Risk,
Case 
When Risk = 'High' Then 3
WHEN Risk = 'high' Then 3
WHEN Risk = 'medium' THEN 2
WHEN Risk = 'low' THEN 1
ELSE 0
END as Ordinal_Encoding
FROM example;

-- One hot encoding for the profession column
select ClientID, Profession,
case 
when Profession = 'Self-employed' then 1
when Profession = 'self-employed' THEN 1 
else 0 
end as self_employed,
case 
when Profession = 'students' then 1
ELSE 0 
END as students,
case 
when Profession = 'Horeca' then 1 
ELSE 0
end as Horeca,
case 
when Profession = 'finance' then 1 
ELSE 0
END as finance
from example;




