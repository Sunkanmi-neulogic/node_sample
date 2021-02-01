#!/bin/sh
./node_modules/.bin/mocha ./test/test.js

PID=$!
kill -INT $PID