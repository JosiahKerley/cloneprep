#!/usr/bin/env bash
source /opt/cloneprep/functions/common.sh
run package-cleanup --oldkernels --count=1
run yum clean all