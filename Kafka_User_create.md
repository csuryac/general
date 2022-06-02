cd /opt/kafka/confluent-7.0.1/bin
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_CYCDEC_B
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_LEDGERDEC_B	
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_CLAIMADJ_C
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_CYCEVNT_P	
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_CYCPOST_C
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_TESTHARNESS_P
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_FINANCE_CYCDEC_B
./kafka-configs --zookeeper kafka-test-broker1.ssnc-corp.cloud:2181 --alter --add-config 'SCRAM-SHA-512=[password=5ncJxTW68X]' --entity-type users --entity-name UAT_ADJUDICATION_CLAIMS_B
UAT_ADJUDICATION_CLAIMS_B


UAT_FINANCE_CYCDEC_B	

UAT_FINANCE_LEDGERDEC_B	

UAT_FINANCE_CLAIMADJ_C	

UAT_FINANCE_CYCEVNT_P	

UAT_FINANCE_CYCPOST_C	
	
UAT_FINANCE_TESTHARNESS_P
