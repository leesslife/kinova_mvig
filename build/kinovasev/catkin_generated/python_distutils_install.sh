#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ziye01/lees_ros/kinova_ws/src/kinovasev"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ziye01/lees_ros/kinova_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ziye01/lees_ros/kinova_ws/install/lib/python3/dist-packages:/home/ziye01/lees_ros/kinova_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ziye01/lees_ros/kinova_ws/build" \
    "/home/ziye01/miniconda3/envs/cg/bin/python3" \
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/setup.py" \
     \
    build --build-base "/home/ziye01/lees_ros/kinova_ws/build/kinovasev" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ziye01/lees_ros/kinova_ws/install" --install-scripts="/home/ziye01/lees_ros/kinova_ws/install/bin"
