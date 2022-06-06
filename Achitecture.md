Architecture Topology
Local/Regional Clusters, Local Access + Bridging
Independent clusters into each location or region, and have clients access only their local cluster.
Globally managed bridging agents for required (global) topics topic to present a global view over those instances.
If single location services move around, then the bridging is reconfigured at the "global" level, individual clients are not impacted.
P = Producers and C= Consumers


Bridging Patterns for our Use cases
ONE TO ONE
Bridging is not required for this. Kafka will not replicate the messages to another region for this pattern. This will be referred as a local topic


MANY TO ONE
The bridges are consumer centric. All messages for a topic will be bridged to the region where the consumer is active. When the consumer moves to a different region, the bridges needs to be re-configured to push it to the new region. This should be part of failover and fail-back activities


ONE TO MANY
The bridges are producer centric. All messages for a topic will be bridged from the producer’s active site to other the required regions. When the producer moves to a different region, the bridges needs to be re-configured to source it from the new region. This should be part of failover and fail-back activities

Kafka Client Expectations
Producers are required to build message replay logic to avoid message loss.
Consumers should be built with idempotency
Clients MUST bootstrap using VIP URL – to avoid tight coupling with Kafka servers
Clients MUST connecting only via SSL ports
Clients MUST have username and password for Authentication and Authorization
 

