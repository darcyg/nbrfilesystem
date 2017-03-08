#!/bin/bash

source build/envsetup.sh
lunch astar_nbr-tina
make -j4
pack -d
