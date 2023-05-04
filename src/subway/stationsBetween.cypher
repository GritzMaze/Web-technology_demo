
// Find the stations between two stations
MATCH (s1: Station {name: $station1})-[r:CONNECTED]-(s2: Station {name: $station1})
RETURN { origin: s1, destination: s2 } AS result
