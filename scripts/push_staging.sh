set -e
scripts/./build_staging.sh
docker push bithavoc/buildpacks-cloud-builder:staging
