#!/bin/bash
curl -X POST -H "Content-type:application/json" -d@./edunetuser.json http://localhost:7001/api/enrolluser
curl -X POST -H "Content-type:application/json" -d@./iitjuser.json http://localhost:7002/api/enrolluser
curl -X POST -H "Content-type:application/json" -d@./iitkgpuser.json http://localhost:7003/api/enrolluser
