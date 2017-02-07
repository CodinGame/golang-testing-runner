#!/bin/bash
cd /project/target
cp -r /project/answer/* .

go test -run $@