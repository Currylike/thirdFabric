#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

 
echo -e "\033[41;32morderer0 的节点配置！\033[0m"



export PWD=/mnt/goProject/src/thirdFabric/myNetwork
export FABRIC_CFG_PATH=/mnt/goProject/src/thirdFabric/config/

cd $PWD

export FABRIC_LOGGING_SPEC=debug:cauthdsl,policies,msp,common.configtx,common.channelconfig=info
export ORDERER_GENERAL_LISTENPORT=6050
export ORDERER_GENERAL_LOCALMSPID=OrdererMSP
export ORDERER_GENERAL_LOCALMSPDIR="${PWD}"/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp
export ORDERER_GENERAL_TLS_ENABLED=true
export ORDERER_GENERAL_TLS_PRIVATEKEY="${PWD}"/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key
export ORDERER_GENERAL_TLS_CERTIFICATE="${PWD}"/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
# following setting is not really needed at runtime since channel config has ca root certs, but we need to override the default in orderer.yaml
export ORDERER_GENERAL_TLS_ROOTCAS="${PWD}"/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
export ORDERER_FILELEDGER_LOCATION="${PWD}"/data/orderer
export ORDERER_CONSENSUS_WALDIR="${PWD}"/data/orderer/etcdraft/wal
export ORDERER_CONSENSUS_SNAPDIR="${PWD}"/data/orderer/etcdraft/wal
export ORDERER_OPERATIONS_LISTENADDRESS=0.0.0.0:8443
export ORDERER_ADMIN_LISTENADDRESS=0.0.0.0:9443


