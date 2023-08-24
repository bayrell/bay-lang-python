#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPT_PATH=`dirname $SCRIPT`
BASE_PATH=`dirname $SCRIPT_PATH`
version="0.0.1"

case "$1" in
	
	build)
		python3 setup.py sdist bdist_wheel
	;;
	
	install)
		python3 setup.py sdist bdist_wheel
		pip3 install dist/bay_lang-$version.tar.gz
	;;
	
	uninstall)
		pip3 uninstall bay_lang
	;;
	
	install-dev)
		python3 setup.py develop --prefix=~/.local
	;;
	
	uninstall-dev)
		python3 setup.py develop -u --prefix=~/.local
	;;
	
	upload)
		twine check dist/bay_lang-$version.tar.gz
		twine check dist/bay_lang-$version-py3-none-any.whl
		twine upload -r pypi dist/bay_lang-$version.tar.gz
		twine upload -r pypi dist/bay_lang-$version-py3-none-any.whl
	;;
	
	clean)
		rm -rf build/*
		rm -rf dist/*
	;;
	
	*)
		echo "Usage: $0 {build|clean|install|install-dev|uninstall|uninstall-dev|upload}"
		RETVAL=1

esac

exit $RETVAL
