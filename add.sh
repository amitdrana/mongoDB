#!/bin/bash

primary=$1
secondary=$2

mongo --host $primary --eval "rs.add(\"$secondary\")"

