
MATCH (s: Station)-[r:CONNECTED]->(e: Station)
WHERE $line IN r.line
RETURN s, r, e
