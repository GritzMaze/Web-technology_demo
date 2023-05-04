MATCH (s: Station)-[r: CONNECTED]-(d: Station)
RETURN s, r.line, d
ORDER BY r.line
