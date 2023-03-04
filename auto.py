#!/usr/bin/python3

import os
os.system ('pwd')
os.system ('docker build -t rajkumar167/rajdocker:automation1v1 .')
os.system ('trivy image -f json -o reports.json rajkumar167/rajdocker:automation1v1 ')
os.system ('cosign sign --key cosign.key rajkumar167/rajdocker:automation1v1')
os.system ('docker push rajkumar167/rajdocker:automation1v1')
