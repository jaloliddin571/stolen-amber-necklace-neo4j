
MATCH (p:Person)
OPTIONAL MATCH (p)-[w1:WAS_IN]->(r:Room)<-[w2:WAS_IN]-(q:Person)
WHERE p <> q
  AND w1.from < w2.to
  AND w2.from < w1.to
RETURN p.name AS Person,
       collect(DISTINCT q.name) AS Witnesses
ORDER BY Person
