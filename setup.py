#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
from os.path import join, dirname

about = __import__("bay_lang")


setup(
    name = about.__name__,
    version = about.__version__,
    description = about.__description__,
    long_description = open(join(dirname(__file__), 'README.md'), encoding='utf-8').read(),
    long_description_content_type='text/markdown',
    author = about.__author__,
    author_email = about.__email__,
    license = about.__license__,
    url = about.__url__,
    packages=find_packages(),
    include_package_data = True,
    scripts=[
        'scripts/bay-lang'
    ],
    install_requires=[
    ],
    classifiers=[
        'Development Status :: 1 - Planning',
        'Environment :: Console',
        'Environment :: Web Environment',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: Apache Software License',
        'Operating System :: OS Independent',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3.10',
        'Topic :: Internet',
        'Topic :: Software Development :: Interpreters',
        'Topic :: Software Development :: Libraries',
    ],
)