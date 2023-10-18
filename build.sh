#!/bin/sh

REPO="github.com/drone/drone"

# compile the server using the cgo
cd drone

if [ "$1" = "enterprise" ]; then
    target="nolimit"
else
    target="oos nolimit"
fi

echo "🛠️ Building drone-server... (${1-oos})"
go build -tags "$target" \
    -ldflags "-extldflags \"-static\"" \
    -o ../release/linux/drone-server ${REPO}/cmd/drone-server


echo "📦️ Building docker-image..."
cd -
docker build --rm -f Dockerfile -t meliorai/drone .
