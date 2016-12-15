#!/bin/bash

#activemq

docker run --name='activemq5.13.2' -d \
	-e 'ACTIVEMQ_NAME=localhost' \
	-e 'ACTIVEMQ_REMOVE_DEFAULT_ACCOUNT=true' \
	-e 'ACTIVEMQ_ADMIN_LOGIN=admin' -e 'ACTIVEMQ_ADMIN_PASSWORD=yafei' \
	-e 'ACTIVEMQ_WRITE_LOGIN=producer_login' -e 'ACTIVEMQ_WRITE_PASSWORD=yafei' \
	-e 'ACTIVEMQ_READ_LOGIN=consumer_login' -e 'ACTIVEMQ_READ_PASSWORD=yafei' \
	-e 'ACTIVEMQ_JMX_LOGIN=jmx_login' -e 'ACTIVEMQ_JMX_PASSWORD=yafei' \
	-e 'ACTIVEMQ_STATIC_TOPICS=topic1;topic2;topic3' \
	-e 'ACTIVEMQ_STATIC_QUEUES=queue1;queue2;queue3' \
	-e 'ACTIVEMQ_MIN_MEMORY=256' -e  'ACTIVEMQ_MAX_MEMORY=512' \
	-e 'ACTIVEMQ_ENABLED_SCHEDULER=true' \
	-v /data/activemq:/data/activemq \
	-v /var/log/activemq:/var/log/activemq \
	-p 8161:8161 \
	-p 61616:61616 \
	-p 61613:61613 \
	webcenter/activemq:5.13.2