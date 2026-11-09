
MATCH (debtor:Person)-[:OWES]->(creditor:Person)
MATCH path = (suspect:Person)-[:CALLED*1..3]->(creditor)
RETURN suspect.name AS Suspect,
       [n IN nodes(path) | n.name] AS CallChain,
       length(path) AS Hops,
       debtor.name AS Debtor,
       creditor.name AS Creditor
