# enable buildx to perform multi platform build
docker buildx create --driver docker-container --name dckbuilder
docker buildx inspect --bootstrap

# build multi platform image
# push to docker hub repo
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t jimenj1970/releaseparty:multiarch . --push
