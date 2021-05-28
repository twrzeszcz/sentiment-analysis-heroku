# General Info
This is a simple sentiment analysis project. Data was taken from [kaggle](https://www.kaggle.com/ankurzing/sentiment-analysis-for-financial-news). Preprocessing and training is done in the **sentiment_analysis_financial** notebook. App is deployed here [Heroku](https://sentiment-analysis-financial.herokuapp.com/) and all the necessary files are in this repo.

There is an additional **sentiment_analysis_financial_BERT** notebook where I have used a pretrained *BERT* and *DistilBERT* models from the *transformers* package and used them for transfer learning to fine-tune on our dataset. They are not used in the app due to their size. Both are uploaded in this repo in **bert_financial** and **distilbert_financial**. 
