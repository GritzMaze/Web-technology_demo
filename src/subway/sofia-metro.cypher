CREATE
  // Create the stations
  (s1:Station {name: 'Business Park'}),
  (s2:Station {name: 'Iskarsko Shose'}),
  (s3:Station {name: 'Mladost 1'}),
  (s4:Station {name: 'Mladost 3'}),
  (s5:Station {name: 'Druzhba'}),
  (s6:Station {name: 'Tsarigradsko Shose'}),
  (s7:Station {name: 'Lavov Most'}),
  (s8:Station {name: 'Central Railway Station'}),
  (s9:Station {name: 'Serdika'}),
  (s10:Station {name: 'Opalchenska'}),
  (s11:Station {name: 'Vasil Levski Stadium'}),
  (s13:Station {name: 'Sofia University'}),
  (s15:Station {name: 'National Palace of Culture'}),
  (s16:Station {name: 'European Union'}),
  (s17:Station {name: 'James Bourchier'}),
  (s18:Station {name: 'Vitosha'}),
  (s21:Station {name: 'Knyaginya Maria Luiza'}),
  (s22:Station {name: 'Han Kubrat'}),
  (s23:Station {name: 'Lyulin'}),
  (s25:Station {name: 'Konstantin Velichkov'}),
  (s26:Station {name: 'Obelya'}),
  (s27:Station {name: 'Lomsko Shose'}),
  (s28:Station {name: 'Nadezhda'}),
  (s30:Station {name: 'Musagenitsa'}),
  (s31:Station {name: 'Vardar'}),
  (s33:Station {name: 'G.M. Dimitrov'}),
  (s34:Station {name: 'Hadji Dimitar'}),
  (s35:Station {name: 'Sofia Airport'}),
  (s37:Station {name: 'Beli Dunav'}),
  (s38:Station {name: 'Slivnitsa'}),
  (s39:Station {name: 'Zapaden Park'}),
  (s40:Station {name: 'Sofiyska Sveta Gora'}),
  (s41:Station {name: 'Aleksandar Malinov'}),
  (s42:Station {name: 'akademik Aleksandar Teodorov-Balan'}),
  (s43:Station {name: 'Gorna Banya'}),
  (s44:Station {name: 'Ovcha Kupel II'}),
  (s45:Station {name: 'Moesia/NBU'}),
  (s46:Station {name: 'Ovcha Kupel I'}),
  (s47:Station {name: 'Tsar Boris III Blvd'}),
  (s48:Station {name: 'Bulgaria Blvd'}),
  (s49:Station {name: 'Medical University'}),
  (s50:Station {name: 'Sveti Patriarh Evtimiy'}),
  (s51:Station {name: 'Teatralna'}),
  (s52:Station {name: 'Fr. Joliot-Curie'}),


  // Create the routes and their travel time between stations
  (s18)-[:CONNECTED {time: 2, line: [2]}]->(s17), // Vitosha -> James Bourchier
  (s17)-[:CONNECTED {time: 2, line: [2]}]->(s16), // James Bourchier -> European Union
  (s16)-[:CONNECTED {time: 2, line: [2]}]->(s15), // European Union -> National Palace of Culture
  (s15)-[:CONNECTED {time: 2, line: [2]}]->(s9), // National Palace of Culture -> Serdika
  (s9)-[:CONNECTED {time: 2, line: [2]}]->(s7), // Serdika -> Lavov Most
  (s7)-[:CONNECTED {time: 2, line: [2]}]->(s8), // Lavov Most -> Central Railway Station
  (s8)-[:CONNECTED {time: 2, line: [2]}]->(s21), // Central Railway Station -> Knyaginya Maria Luiza
  (s21)-[:CONNECTED {time: 2, line: [2]}]->(s22), // Knyaginya Maria Luiza -> Han Kubrat
  (s22)-[:CONNECTED {time: 2, line: [2]}]->(s28), // Han Kubrat -> Nadezhda
  (s28)-[:CONNECTED {time: 2, line: [2]}]->(s37), // Nadezhda -> Beli Dunav
  (s37)-[:CONNECTED {time: 2, line: [2]}]->(s27), // Beli Dunav -> Lomsko Shose
  (s27)-[:CONNECTED {time: 2, line: [2]}]->(s26), // Lomsko Shose -> Obelya
  (s38)-[:CONNECTED {time: 2, line: [1, 4]}]->(s23), // Slivnitsa -> Lyulin
  (s23)-[:CONNECTED {time: 2, line: [1, 4]}]->(s39), // Lyulin -> Zapaden Park
  (s39)-[:CONNECTED {time: 2, line: [1, 4]}]->(s31), // Zapaden Park -> Vardar
  (s31)-[:CONNECTED {time: 2, line: [1, 4]}]->(s25), // Vardar -> Konstantin Velichkov
  (s25)-[:CONNECTED {time: 2, line: [1, 4]}]->(s10), // Konstantin Velichkov -> Opalchenska
  (s10)-[:CONNECTED {time: 2, line: [1, 4]}]->(s9), // Opalchenska -> Serdika
  (s9)-[:CONNECTED {time: 2, line: [1, 4]}]->(s13), // Serdika -> Sofia University
  (s13)-[:CONNECTED {time: 2, line: [1, 4]}]->(s11), // Sofia University -> Vasil Levski Stadium
  (s11)-[:CONNECTED {time: 2, line: [1, 4]}]->(s52), // Vasil Levski Stadium -> Fr. Joliot-Curie
  (s52)-[:CONNECTED {time: 2, line: [1, 4]}]->(s33), // Fr. Joliot-Curie -> G.M. Dimitrov
  (s33)-[:CONNECTED {time: 2, line: [1, 4]}]->(s30), // G.M. Dimitrov -> Musagenitsa
  (s30)-[:CONNECTED {time: 2, line: [1, 4]}]->(s3), // Musagenitsa -> Mladost 1
  (s3)-[:CONNECTED {time: 2, line: [4]}]->(s4), // Mladost 1 -> Mladost 3
  (s4)-[:CONNECTED {time: 2, line: [4]}]->(s6), // Mladost 3 -> Tsarigradsko Shose
  (s6)-[:CONNECTED {time: 2, line: [4]}]->(s5), // Tsarigradsko Shose -> Druzhba
  (s5)-[:CONNECTED {time: 2, line: [4]}]->(s2), // Druzhba -> Iskarsko Shose
  (s2)-[:CONNECTED {time: 2, line: [4]}]->(s40), // Iskarsko Shose -> Sofiyska Sveta Gora
  (s40)-[:CONNECTED {time: 2, line: [4]}]->(s35), // Sofiyska Sveta Gora -> Sofia Airport
  (s3)-[:CONNECTED {time: 2, line: [1]}]->(s41), // Mladost -> Aleksandar Malinov
  (s41)-[:CONNECTED {time: 2, line: [1]}]->(s42), // Aleksandar Malinov -> akademik Aleksandar Teodorov-Balan
  (s42)-[:CONNECTED {time: 2, line: [1]}]->(s1), // akademik Aleksandar Teodorov-Balan -> Business Park
  (s43)-[:CONNECTED {time: 2, line: [3]}]->(s44), // Gorna Banya -> Ovcha Kupel II
  (s44)-[:CONNECTED {time: 2, line: [3]}]->(s45), // Ovcha Kupel II -> Moesia/NBU
  (s45)-[:CONNECTED {time: 2, line: [3]}]->(s46), // Moesia/NBU -> Ovcha Kupel I
  (s46)-[:CONNECTED {time: 2, line: [3]}]->(s47), // Ovcha Kupel I -> Tsar Boris III Blvd
  (s47)-[:CONNECTED {time: 2, line: [3]}]->(s48), // Tsar Boris III Blvd -> Bulgaria Blvd
  (s48)-[:CONNECTED {time: 2, line: [3]}]->(s49), // Bulgaria Blvd -> Medical University
  (s49)-[:CONNECTED {time: 2, line: [3]}]->(s15), // Medical University -> National Palace of Culture
  (s15)-[:CONNECTED {time: 2, line: [3]}]->(s50), // National Palace of Culture -> Sveti Patriarh Evtimiy
  (s50)-[:CONNECTED {time: 2, line: [3]}]->(s13), // Sveti Patriarh Evtimiy -> Sofia University
  (s13)-[:CONNECTED {time: 2, line: [3]}]->(s51), // Sofia University -> Teatralna
  (s51)-[:CONNECTED {time: 2, line: [3]}]->(s34) // Teatralna -> Hadji DImitar
