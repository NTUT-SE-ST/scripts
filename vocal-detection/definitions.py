import os

ROOT_DIR = os.path.dirname(os.path.abspath(__file__))
DATA_DIR = os.path.join(ROOT_DIR, './data')
WEIGHT_DIR = os.path.join(DATA_DIR, './weight')
MODEL_DIR = os.path.join(DATA_DIR, './model')
AVERAGE_DATA_DIR = os.path.join(ROOT_DIR, './average_data')
LOG_DIR = os.path.join(ROOT_DIR, './logs')
IMAGE_DIR = os.path.join(ROOT_DIR, './dl_keras/images')
UPLOAD_FOLDER = os.path.join(ROOT_DIR, './server/uploads')
RESULTS_FOLDER = os.path.join(ROOT_DIR, './server/results')
RUN_DIR = os.path.join(ROOT_DIR, 'runs')
VOTE_DIR = os.path.join(DATA_DIR, './voting')
MERGE_DIR = os.path.join(DATA_DIR, './merge')

