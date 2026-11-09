
MATCH (p:Person)-[:HAS_KEY]->(vault:Room {name:'Vault'})
MATCH (p)-[w:WAS_IN]->(r:Room)-[:DOOR]-(vault)
WHERE w.from < 2130 AND w.to > 2100
RETURN p.name AS Suspect,
       r.name AS Room,
       vault.name AS KeyLocation
