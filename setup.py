from setuptools import setup

name = "exllama"

setup(
    name=name,
    version="0.1.0",
    packages=[name],
    package_data={name: ["exllama_ext/*", "exllama_ext/*/*", "exllama_ext/*/*/*"]},
    python_requires=">=3.9",
    install_requires=[
        "torch>=2.0.1",
        "safetensors==0.3.1",
        "sentencepiece>=0.1.97",
        "ninja==1.11.1",
    ],
    zip_safe=False,
)
