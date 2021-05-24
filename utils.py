import re
from nltk.corpus import stopwords
from nltk.stem import PorterStemmer


def apply_regex(X):
    # replace any urls with "url"
    X = [re.sub(r'http\S+', ' url', r) for r in X]

    # replace any breakline and carriage return patterns with a space
    X = [re.sub('[\n\r]', ' ', r) for r in X]

    # replace dates in the format day.month.year with a "date"
    X = [re.sub('([0-2][0-9]|(3)[0-1])\.(((0)[0-9])|((1)[0-2]))\.\d{2,4}', ' date ', r) for r in X]

    # replace year with a "year"
    X = [re.sub(r'\d{4}', 'year', r) for r in X]

    # replace %, $ and US$ patterns
    X = [re.sub('[%]', 'percent', r) for r in X]
    X = [re.sub('US\$', 'USD', r) for r in X]
    X = [re.sub('[$]', 'USD', r) for r in X]

    # replace any non word strings with a space
    X = [re.sub('\W', ' ', r) for r in X]

    # remove additional whitespaces
    X = [re.sub('\s+', ' ', r) for r in X]
    X = [re.sub('[ \t]+$', '', r) for r in X]

    return X



def stopwords_removal(X, cached_stopwords=stopwords.words('english')):
    words = [[c.lower() for c in text.split() if c.lower() not in cached_stopwords] for text in X]
    return [' '.join(i) for i in words]


def stemming_process(X, stemmer=PorterStemmer()):
    words = [[stemmer.stem(c) for c in text.split()] for text in X]
    return [' '.join(i) for i in words]