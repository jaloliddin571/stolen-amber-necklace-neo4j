
CREATE
(ilze:Person {name:'Countess Ilze', role:'host'}),
(andris:Person {name:'Andris', role:'butler'}),
(marta:Person {name:'Marta', role:'jeweller'}),
(viktor:Person {name:'Viktor', role:'guest'}),
(rasa:Person {name:'Rasa', role:'chef'}),
(janis:Person {name:'Jānis', role:'gardener'}),

(ball:Room {name:'Ballroom'}),
(lib:Room {name:'Library'}),
(kit:Room {name:'Kitchen'}),
(gar:Room {name:'Garden'}),
(vault:Room {name:'Vault'}),

(ball)-[:DOOR]->(lib),
(ball)-[:DOOR]->(kit),
(lib)-[:DOOR]->(vault),
(kit)-[:DOOR]->(vault),
(kit)-[:DOOR]->(gar),

(andris)-[:HAS_KEY]->(vault),
(rasa)-[:HAS_KEY]->(vault),

(ilze)-[:WAS_IN {from:2000, to:2200}]->(ball),
(andris)-[:WAS_IN {from:2000, to:2200}]->(ball),
(marta)-[:WAS_IN {from:2000, to:2110}]->(ball),
(marta)-[:WAS_IN {from:2110, to:2200}]->(gar),
(viktor)-[:WAS_IN {from:2000, to:2100}]->(ball),
(viktor)-[:WAS_IN {from:2100, to:2125}]->(lib),
(rasa)-[:WAS_IN {from:2000, to:2200}]->(kit),
(janis)-[:WAS_IN {from:2000, to:2200}]->(gar),

(rasa)-[:CALLED {at:2055}]->(viktor),
(viktor)-[:CALLED {at:2130}]->(marta),
(viktor)-[:OWES {eur:15000}]->(marta)
