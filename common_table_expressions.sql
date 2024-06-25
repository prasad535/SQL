-- 1. More understanble and readable
-- 2. Reusability

USE prasadtech;

CREATE TABLE IF NOT EXISTS Orders (
	orderID INT AUTO_INCREMENT,
    Order_Date TIMESTAMP NOT NULL,
    Order_LearnerID INT NOT NULL, 
    Order_Status VARCHAR(10),
    PRIMARY KEY(OrderID),
    FOREIGN KEY(Order_learnerID) REFERENCES Learners(LearnerID)
);

-- Insert data
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-01-23", 1, "COMPLETE");
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-01-09", 2, "COMPLETE");
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-02-13", 3, "COMPLETE");
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-02-15", 4, "COMPLETE");
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-02-20", 5, "COMPLETE");
INSERT INTO Orders (Order_Date, Order_LearnerID, Order_Status) 
VALUES ("2024-02-05", 6, "COMPLETE");

SELECT * FROM Learners;
DESC Learners;
DESC Orders;
DESC Learners;


-- Total Orders per student
-- Order_learners_id	Total_Orders
SELECT temp.OrderID, LearnerFirstName, LearnerLastName, Temp.Total_Orders
FROM Learners L
JOIN
(SELECT OrderID, COUNT(*) AS Total_Orders, Order_LearnerID
FROM Orders
GROUP BY OrderID) As temp
ON L.LearnerID = temp.Order_LearnerID;


-- Order_learner_ID, LearnerFirstName, LearnerLastName, Total_Orders, Avg_Orders
SELECT temp.OrderID, LearnerFirstName, LearnerLastName, Temp.Total_Orders,
AVG(SUM(temp.Total_Orders)) OVER() AS Avg_Orders
FROM Learners L
JOIN
(SELECT OrderID, COUNT(*) AS Total_Orders, Order_LearnerID
FROM Orders
GROUP BY OrderID) As temp
ON L.LearnerID = temp.Order_LearnerID
GROUP BY OrderID;

-- Common Table Expressions(CTE) --> Complexity of given query+reusability
-- Usually, Whenever lot of subquiries or joins in the sql. Go for CTE
-- Write code immediately after the brackets
With states as (
	SELECT state, Sum(shipping_cost) As sum_shipping_cost
    FROM sales_dataset
    GROUP BY state
    ORDER BY sum_shipping_cost DESC
    LIMIT 3
)SELECT * FROM states;
