# The Stolen Amber Necklace 🔎

**NoSQL Database Technologies — Final Project**

A detective investigation project built with **Neo4j** and **Cypher**. The goal is to investigate a fictional necklace theft using graph database relationships.

## Project Scenario

During a gala at an old manor in Kurzeme, Latvia, an amber necklace disappears from the vault between 21:00 and 21:30.

The investigation analyzes:
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
- Person
- Room

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
├── screenshots/
├── diagrams/
└── report/
```

## Investigation Tasks

- [x] Create the initial graph database
- [x] Find people near the vault
- [x] Identify vault key holders
- [x] Investigate alibis and witnesses
- [x] Analyze phone call chains
- [x] Investigate debts and motives
- [x] Visualize the evidence graph
- [ ] Add constraints and indexes
- [ ] Analyze query performance with PROFILE
- [ ] Compare SQL and Cypher
- [ ] Create a custom detective mystery

## Expected Deliverables

- Cypher scripts
- Graph model diagram
- Query result screenshots
- Written project report
- Five-slide presentation

## Academic Project

Course: NoSQL Database Technologies

Project: The Stolen Amber Necklace

Database: Neo4j

**Status:** In progress 🚧
