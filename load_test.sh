#!/bin/bash

# Create targets file
echo "GET http://localhost:8000/random/1000" | \
vegeta attack -duration=5s -rate=50 -workers=2 -connections=3 | \
vegeta report -type=text
