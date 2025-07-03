#!/bin/bash
cd /home/kavia/workspace/code-generation/easycalc-119795-92234f6a/calculator_frontend
npm run build
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
   exit 1
fi

