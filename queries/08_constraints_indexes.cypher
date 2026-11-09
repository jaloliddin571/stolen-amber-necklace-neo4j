
// 1. Unique constraint for Person names
CREATE CONSTRAINT person_name_unique IF NOT EXISTS
FOR (p:Person)
REQUIRE p.name IS UNIQUE;

// 2. Index on WAS_IN relationship property
CREATE INDEX was_in_from_index IF NOT EXISTS
FOR ()-[w:WAS_IN]-()
ON (w.from);

// 3. Profile investigation query
PROFILE
MATCH (p:Person)-[w:WAS_IN]->(r:Room)-[:DOOR]-(:Room {name:'Vault'})
WHERE w.from < 2130 AND w.to > 2100
RETURN p.name, r.name, w.from, w.to;
