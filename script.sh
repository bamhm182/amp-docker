#! /bin/sh

su - AMP -c "printf 'Port: $AMP_PORT\nLicense: $AMP_LICENSE_KEY\nPassword: $AMP_PASSWORD\nUsername: $AMP_USERNAME'"

su - AMP -c "/home/AMP/ampinstmgr CreateInstance ADS ADSInstance 0.0.0.0 $AMP_PORT $AMP_LICENSE_KEY $AMP_PASSWORD +Core.Login.Username $AMP_USERNAME"
su - AMP -c "/home/AMP/ampinstmgr StartInstance ADSInstance"
