./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --list --command-config  qc.config



./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_ADJUDICATION_CLAIM_FINANCE
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_ADJUDICATION_CLAIM_MESSAGEFLOW --command-config  qc.config
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_FINANCE_CLAIM_ADJUDIDATED --command-config  qc.config
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_FINANCE_CLAIM_CYCLE --command-config  qc.config 
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_FINANCE_CLAIM_LEDGER --command-config  qc.config 
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 2 --partitions 6 --topic UAT_FINANCE_CUSTOME_FUNDING --command-config  qc.config
./kafka-topics.sh --bootstrap-server kafka-test-broker1.ssnc-corp.cloud:9094 --create --replication-factor 1 --partitions 6 --topic UAT_FINANCE_CYCLE_EVENT --command-config  qc.config2
