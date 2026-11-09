
MATCH (p:Person)-[w:WAS_IN]->(r:Room)-[:DOOR]-(:Room {name:'Vault'})
WHERE w.from < 2130 AND w.to > 2100
RETURN p.name AS Suspect,
       r.name AS Room,
       w.from AS From,
       w.to AS To
