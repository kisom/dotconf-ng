REGISTRY=$HOME/code/dylan/registry
DYLAN=/usr/local/opendylan

if [ -d $DYLAN ]
then
	export PATH=$PATH:$DYLAN/bin
	export OPEN_DYLAN_USER_REGISTRIES=$REGISTRY
fi
