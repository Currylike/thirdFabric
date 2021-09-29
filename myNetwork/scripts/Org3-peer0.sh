#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

 
echo -e "\033[41;32mOrg3-peer0的节点配置！\033[0m"



export PWD=/mnt/goProject/src/thirdFabric/myNetwork
export FABRIC_CFG_PATH=/mnt/goProject/src/thirdFabric/config/

cd $PWD

export FABRIC_LOGGING_SPEC=debug:cauthdsl,policies,msp,grpc,peer.gossip.mcs,gossip,leveldbhelper=info
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_CERT_FILE="${PWD}"/organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/server.crt
export CORE_PEER_TLS_KEY_FILE="${PWD}"/organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE="${PWD}"/organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
export CORE_PEER_ID=peer0.org3.example.com
export CORE_PEER_ADDRESS=0.0.0.0:7059
export CORE_PEER_LISTENADDRESS=0.0.0.0:7059
#export CORE_PEER_CHAINCODEADDRESS=host.docker.internal:7080
export CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:7080
# bootstrap peer is the other peer in the same org
export CORE_PEER_GOSSIP_BOOTSTRAP=120.78.188.180:7059
export CORE_PEER_GOSSIP_EXTERNALENDPOINT=120.78.188.180:7059
export CORE_PEER_LOCALMSPID=Org3MSP
export CORE_PEER_MSPCONFIGPATH="${PWD}"/organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/msp
export CORE_OPERATIONS_LISTENADDRESS=127.0.0.1:8450
export CORE_PEER_FILESYSTEMPATH="${PWD}"/data/peer0.org3.example.com
export CORE_LEDGER_SNAPSHOTS_ROOTDIR="${PWD}"/data/peer0.org3.example.com/snapshots

peer node start