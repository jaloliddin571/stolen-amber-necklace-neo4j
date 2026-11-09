# The Stolen Amber Necklace 🔎

**NoSQL Database Technologies — Final Project**

A detective investigation project built with **Neo4j AuraDB** and **Cypher**. The project investigates a fictional amber necklace theft using graph database relationships and queries.

## Project Scenario

During a gala at an old manor in Kurzeme, Latvia, an amber necklace disappears from the vault between 21:00 and 21:30.

The investigation focuses on:
- People and their roles
- Rooms and door connections
- Key ownership
- Suspects' locations and alibis
- Phone calls between suspects
- Financial debts and possible motives

## Technology Stack

- Neo4j AuraDB Free
- Cypher Query Language
- Graph Database
- GitHub

## Graph Data Model

### Nodes
- `Person`
- `Room`

### Relationships
- `DOOR`
- `HAS_KEY`
- `WAS_IN`
- `CALLED`
- `OWES`

## Project Structure

```text
stolen-amber-necklace-neo4j/
├── README.md
├── queries/
│   ├── 01_create_case.cypher
│   ├── 02_suspects.cypher
│   ├── 03_vault_keys.cypher
│   ├── 04_alibis.cypher
│   ├── 05_call_chains.cypher
│   ├── 06_debts.cypher
│   ├── 07_evidence_graph.cypher
│   └── 08_constraints_indexes.cypher
├── 09_sql_comparison.sql
└── evidence/
```

## Investigation Tasks

- [x] Create the initial graph database
- [x] Find people near the vault
- [x] Identify vault key holders
- [x] Investigate alibis and witnesses
- [x] Analyze phone call chains
- [x] Investigate debts and possible motives
- [x] Visualize the evidence graph
- [x] Add a uniqueness constraint for person names
- [x] Create an index on `WAS_IN.from`
- [x] Run a query using `PROFILE`
- [x] Prepare an SQL comparison
- [x] Create a custom detective mystery
- [x] Test the custom mystery queries

## Performance Analysis

The project uses Neo4j's `PROFILE` command to inspect query execution plans and database accesses.

The database includes:
- A uniqueness constraint on `Person.name`
- An index on the `WAS_IN.from` relationship property

## Custom Mystery

A second mini-mystery, **The Missing Diamond Ring**, was created to test graph database investigation techniques with a separate set of people, rooms, and relationships.

## Expected Deliverables

- Cypher query scripts
- Graph model diagram
- Query result screenshots
- Evidence graph screenshots
- SQL and Cypher comparison
- Written project report
- Five-slide presentation

## Academic Project

**Course:** NoSQL Database Technologies  
**Project:** The Stolen Amber Necklace  
**Database:** Neo4j AuraDB  

**Status:** In progress 🚧
