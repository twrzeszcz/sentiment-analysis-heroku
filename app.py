from flask import Flask, request, render_template
from flask_cors import cross_origin
from utils import apply_regex, stopwords_removal, stemming_process
import pickle
import tensorflow as tf
from tensorflow import keras
import numpy as np


model = keras.models.load_model('sentiment_model.h5')
vectorizer_model = keras.models.load_model('vectorizer')
vectorizer = vectorizer_model.layers[0]
prep_pipe = pickle.load(open('prep_pipe.pkl', 'rb'))
classes_map = {0: 'Neutral', 1: 'Positive', 2: 'Negative'}


app = Flask(__name__)


@app.route('/')
@cross_origin()
def home():
    return render_template('index.html')



@app.route('/predict', methods=['GET', 'POST'])
@cross_origin()
def predict():
    if request.method == 'POST':
        output = [x for x in request.form.values()][0]
        output = prep_pipe.transform([output])
        output = vectorizer(output)
        yhat = np.argmax(model.predict(output), axis=-1)[0]
        probs = np.round(np.max(model.predict(output), axis=-1)[0] * 100, 2)
        return render_template('index.html', prediction_text='Predicted class : {}, Probability: {}%'.format(classes_map[yhat], probs))
    return render_template('index.html')


if __name__ == '__main__':
    app.run(debug=True)