#!/usr/bin/env bash
docker build -t "sp41mer:style-transfer" .
docker run -dti -v /Users/sp41mer/PycharmProjects/fast-style-transfer/checkpoints:/root/fast-style-transfer/checkpoints \
       -v /Users/sp41mer/PycharmProjects/fast-style-transfer/results:/root/fast-style-transfer/results \
       -v /Users/sp41mer/PycharmProjects/fast-style-transfer/code:/root/fast-style-transfer/code sp41mer:style-transfer