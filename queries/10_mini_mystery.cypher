
// THE MISSING DIAMOND RING
// Mini mystery - initial data

CREATE
(anna:MiniPerson {name:'Anna', role:'Owner'}),
(mark:MiniPerson {name:'Mark', role:'Security Guard'}),
(lina:MiniPerson {name:'Lina', role:'Curator'}),
(peter:MiniPerson {name:'Peter', role:'Guest'}),
(eva:MiniPerson {name:'Eva', role:'Cleaner'}),
(tom:MiniPerson {name:'Tom', role:'Cook'}),

(gallery:MiniRoom {name:'Gallery'}),
(library:MiniRoom {name:'Library'}),
(kitchen:MiniRoom {name:'Kitchen'}),
(hall:MiniRoom {name:'Hall'}),

(ring:MissingItem {name:'Diamond Ring', value:5000}),

// Room connections
(gallery)-[:DOOR_TO]->(hall),
(hall)-[:DOOR_TO]->(library),
(hall)-[:DOOR_TO]->(kitchen),
(kitchen)-[:DOOR_TO]->(gallery),

// People with Gallery keys
(mark)-[:HAS_KEY]->(gallery),
(lina)-[:HAS_KEY]->(gallery),

// Locations during the investigation
(anna)-[:WAS_IN {startTime:2000, endTime:2030}]->(hall),
(mark)-[:WAS_IN {startTime:2000, endTime:2010}]->(hall),
(mark)-[:WAS_IN {startTime:2010, endTime:2020}]->(gallery),
(lina)-[:WAS_IN {startTime:2000, endTime:2030}]->(library),
(peter)-[:WAS_IN {startTime:2000, endTime:2030}]->(hall),
(eva)-[:WAS_IN {startTime:2000, endTime:2030}]->(kitchen),
(tom)-[:WAS_IN {startTime:2000, endTime:2030}]->(kitchen),

// Last known location of the ring
(ring)-[:LAST_SEEN_IN]->(gallery),

// Red herring: Peter owes money to Anna
(peter)-[:OWES {eur:2000}]->(anna),

// A phone call after the theft
(mark)-[:CALLED {at:2025}]->(peter);
