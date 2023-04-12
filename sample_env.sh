# Create new conda environment and setup based on requirements.txt file
conda env remove -n gpt-j -y
conda create --name gpt-j pip ipykernel cudatoolkit=11 python=3.8.10 -y
source /opt/conda/etc/profile.d/conda.sh
conda activate --stack gpt-j
pip install -r mesh-transformer-jax/requirements.txt
python -m ipykernel install --user --name=gpt-j
