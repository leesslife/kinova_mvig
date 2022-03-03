from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

setup_args = generate_distutils_setup(
    name='kinova_client',
    packages=['scripts'],
    package_dir={'scripts': 'scripts',
                 'scripts/utils':"scripts.utils",
                 'scripts/controller':"scripts.controller"},
)

setup(**setup_args)