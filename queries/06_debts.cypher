
MATCH (debtor:Person)-[d:OWES]->(creditor:Person)
MATCH path = (debtor)-[*1..2]-(connected:Person)
WHERE connected <> debtor
RETURN debtor.name AS Debtor,
       creditor.name AS Creditor,
       d.eur AS Debt_EUR,
       collect(DISTINCT connected.name) AS ConnectedPeople
