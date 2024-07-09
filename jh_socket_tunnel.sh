#!/bin/bash

# Use default ISPJH as proxy socket to port 3080
# You can pass port (-p) and/or host (-h)
# run: ~/aws_jh_uk_uk-isp-monitoring-dev.sh

#!/bin/bash

# Valori di default
PORT=3080
HOST=ispjh.nme.bllon.sns.sky.com

usage() {
    echo "Use: $0 [-p port] [-h host]"
    echo "  -p port (Optional default is 3080)"
    echo "  -h host (Optional default is ispjh.nme.bllon.sns.sky.com)"
    exit 1
}

while getopts ":p:h:" opt; do
    case "${opt}" in
        p)
            PORT=${OPTARG}
            ;;
        h)
            HOST=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done

echo "Start socket proxy:"
echo "Use Port: ${PORT}"
echo "Use Host: ${HOST}"
echo "ssh -D ${PORT} ${HOST}"

sleep 5
# run command:
ssh -D "${PORT}" "${HOST}"
