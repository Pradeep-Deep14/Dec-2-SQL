-- Create the table
CREATE TABLE credit_card_issuance (
    card_name VARCHAR(50) NOT NULL,
    issued_amount INT NOT NULL,
    issue_month SMALLINT NOT NULL CHECK (issue_month BETWEEN 1 AND 12),
    issue_year INT NOT NULL CHECK (issue_year >= 1900 AND issue_year <= 2100),
    PRIMARY KEY (card_name, issue_month, issue_year)
);

-- Insert the data
INSERT INTO credit_card_issuance (card_name, issued_amount, issue_month, issue_year) VALUES
('Chase Freedom Flex', 55000, 1, 2021),
('Chase Freedom Flex', 60000, 2, 2021),
('Chase Freedom Flex', 65000, 3, 2021),
('Chase Freedom Flex', 70000, 4, 2021),
('Chase Sapphire Reserve', 170000, 1, 2021),
('Chase Sapphire Reserve', 175000, 2, 2021),
('Chase Sapphire Reserve', 180000, 3, 2021);


SELECT * FROM CREDIT_CARD_ISSUANCE

/*
Write a query that outputs the name of each credit card and the difference in the
number of issued cards between the month with the highest issuance cards and the
lowest issuance. Arrange the results based on the largest disparity.
*/


--CARD_NAME
--DIFFERENCE IN ISSUED_CARDS BETWEEN HIGH AND LOW ISSUED_AMOUNT


SELECT CARD_NAME,
	   MAX(ISSUED_AMOUNT) - MIN(ISSUED_AMOUNT) AS DIFFERENCE
FROM CREDIT_CARD_ISSUANCE
GROUP BY 1
ORDER BY 2 DESC
