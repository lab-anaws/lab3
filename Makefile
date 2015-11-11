all: rpl-root.c rpl-node.c

CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

CONTIKI=../../..

WITH_UIP6=1
UIP_CONF_IPV6=1
CFLAGS+= -DUIP_CONF_IPV6=1 -DWITH_UIP6=1 -DUIP_CONF_IPV6_RPL -DRPL_CONF_STATS=1
include $(CONTIKI)/Makefile.include
