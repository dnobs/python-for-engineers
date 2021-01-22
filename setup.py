import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="python-for-engineers", # name used by pip install, may be different than name used when importing but is usually it is the same
    version="0.0.1", # "0.0.x" imply that it's an unstable package. it's a good way to start distributing packages
    author="David Nobles",
    author_email="dave.nobs.dev@gmail.com",
    description="General use python toolkit, built from the perspective of an engineer",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/dnobs/python-for-engineers",
    py_modules=["ETKT"],
    package_dir={'': 'src'},
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)