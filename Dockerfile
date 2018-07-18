FROM cassandra:3

COPY scripts/setup-config.sh /setup-config.sh
RUN sh setup-config.sh

# 7000 : intra-node communication
# 7001 : TLS inrra-node communication
# 7199 : JMX
# 9042 : CQL
# 9160 : thrift service
EXPOSE 7000 7001 7199 9042 9160
