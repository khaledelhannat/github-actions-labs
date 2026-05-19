#!/bin/bash

result=$(node -e "
const { add } = require('./src/calculator');
console.log(add(5, 7));
")

expected=12

if [ "$result" -eq "$expected" ]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed"
    echo "Expected: $expected"
    echo "Got: $result"
    exit 1
fi