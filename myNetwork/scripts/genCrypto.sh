#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

 echo "生成各个节点身份信息"

 cryptogen generate --config=./organizations/cryptogen/crypto-config-org1.yaml --output="organizations"


 cryptogen generate --config=./organizations/cryptogen/crypto-config-org2.yaml --output="organizations"
 
 
 cryptogen generate --config=./organizations/cryptogen/crypto-config-org3.yaml --output="organizations"


 cryptogen generate --config=./organizations/cryptogen/crypto-config-orderer.yaml --output="organizations"


 echo "生成各个节点connection文件"

 ./organizations/ccp-generate.sh