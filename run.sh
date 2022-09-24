set -e
set -x

# Install TensorFlow with GPU support before running this script.

CAPSULE_LOCATION="data/capsule"
#rm -rf $CAPSULE_LOCATION
#mkdir $CAPSULE_LOCATION

#wget -P $CAPSULE_LOCATION/ https://storage.googleapis.com/capsule_toronto/norb_em_checkpoints.tar.gz
#wget -P $CAPSULE_LOCATION/ https://storage.googleapis.com/capsule_toronto/smallNORB_data.tar.gz

#mkdir -p $CAPSULE_LOCATION/smallNORB/
#tar -xvzf $CAPSULE_LOCATION/smallNORB_data.tar.gz -C $CAPSULE_LOCATION/smallNORB/
#tar -xvzf $CAPSULE_LOCATION/norb_em_checkpoints.tar.gz -C $CAPSULE_LOCATION/


python -m experiment
            --ckpnt=$CAPSULE_LOCATION/model.ckpt-1\
            --norb_data_dir=$CAPSULE_LOCATION/smallNORB/