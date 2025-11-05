from setuptools import setup, find_packages

setup(
    name="kctx",
    version="1.0.0",
    packages=find_packages(),
    install_requires=[],
    entry_points={
        'console_scripts': [
            'kctx=kctx.main:main',
        ],
    },
    author="Your Name",
    description="A simple CLI To-Do app built with Python",
    license="MIT",
    python_requires=">=3.7",
)