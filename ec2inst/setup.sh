#!/bin/bash

# This installs tools for doing software development.
sudo yum groupinstall "Development Tools"

# Basic stuff
git clone https://github.com/jdellithorpe/config.git
git clone https://github.com/jdellithorpe/scripts.git
git clone https://github.com/jdellithorpe/utils.git

# Things I'm working on 
git clone https://github.com/jdellithorpe/ldbc-snb-datagen-cloudlab-profile.git
git clone https://github.com/ldbc/ldbc_snb_driver.git
git clone https://github.com/jdellithorpe/ramcloud-cloudlab-profile-m510.git
