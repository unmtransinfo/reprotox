#!/bin/bash
###

. $HOME/.neo4j.reprotox.sh

#
cypher-shell -a "bolt://${NEO4J_HOST}:${NEO4J_PORT}" -u "${NEO4J_USERNAME}" -p "${NEO4J_PASSWORD}" "MATCH (c:Chemical) RETURN COUNT(c) AS COMPOUND_COUNT"
#
cypher-shell -a "bolt://${NEO4J_HOST}:${NEO4J_PORT}" -u "${NEO4J_USERNAME}" -p "${NEO4J_PASSWORD}" "MATCH (c:Chemical)-[r:CHEMICAL_TARGET]-(t:Target) RETURN COUNT(r) AS CHEMICAL_TARGET_RELATIONSHIP_COUNT"
#
cypher-shell -a "bolt://${NEO4J_HOST}:${NEO4J_PORT}" -u "${NEO4J_USERNAME}" -p "${NEO4J_PASSWORD}" "MATCH (c:Chemical)-[r:CHEMICAL_GENE_ASSOCIATION]-(g:Gene) RETURN COUNT(r) AS CHEMICAL_GENE_RELATIONSHIP_COUNT"
#
cypher-shell -a "bolt://${NEO4J_HOST}:${NEO4J_PORT}" -u "${NEO4J_USERNAME}" -p "${NEO4J_PASSWORD}" "MATCH (c:Chemical)-[r:CHEMICAL_DISEASE_ASSOCIATION]-(da:DiseaseArea) RETURN COUNT(r) AS CHEMICAL_DISEASEAREA_RELATIONSHIP_COUNT"
#
