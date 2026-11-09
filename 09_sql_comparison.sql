
-- SQL equivalent of the Cypher call-chain query

-- 1 hop
SELECT
    c1.from_person AS suspect,
    c1.to_person AS creditor,
    1 AS hops
FROM Called c1
JOIN Owes o ON c1.to_person = o.creditor

UNION ALL

-- 2 hops
SELECT
    c1.from_person AS suspect,
    c2.to_person AS creditor,
    2 AS hops
FROM Called c1
JOIN Called c2
    ON c1.to_person = c2.from_person
JOIN Owes o
    ON c2.to_person = o.creditor

UNION ALL

-- 3 hops
SELECT
    c1.from_person AS suspect,
    c3.to_person AS creditor,
    3 AS hops
FROM Called c1
JOIN Called c2
    ON c1.to_person = c2.from_person
JOIN Called c3
    ON c2.to_person = c3.from_person
JOIN Owes o
    ON c3.to_person = o.creditor;
