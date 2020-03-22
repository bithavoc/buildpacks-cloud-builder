set -e
scripts/./build.sh
docker push bithavoc/buildpacks-cloud-builder
